.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x6187, %rsi
lea addresses_A_ht+0x15acf, %rdi
sub $49986, %r14
mov $98, %rcx
rep movsl
nop
and $48367, %rbx
lea addresses_normal_ht+0xb9cf, %rsi
lea addresses_WT_ht+0xa57d, %rdi
clflush (%rdi)
nop
add %r13, %r13
mov $2, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $54480, %rbx
lea addresses_WT_ht+0x66df, %r14
nop
nop
nop
nop
nop
cmp $29481, %r15
mov (%r14), %di
nop
nop
nop
nop
nop
inc %r14
lea addresses_A_ht+0x160ff, %rsi
lea addresses_UC_ht+0x1e48f, %rdi
nop
xor %r13, %r13
mov $60, %rcx
rep movsl
nop
add $51267, %rcx
lea addresses_WT_ht+0x222f, %rsi
lea addresses_WT_ht+0x187cf, %rdi
nop
cmp %r10, %r10
mov $68, %rcx
rep movsq
nop
nop
nop
nop
cmp $63020, %r10
lea addresses_A_ht+0xa2cf, %rbx
nop
cmp $15531, %r15
mov $0x6162636465666768, %r10
movq %r10, %xmm5
and $0xffffffffffffffc0, %rbx
movntdq %xmm5, (%rbx)
add $53815, %rcx
lea addresses_WT_ht+0x1bd35, %rcx
nop
nop
nop
nop
inc %rsi
movb (%rcx), %r10b
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x59a7, %rsi
lea addresses_WC_ht+0xb762, %rdi
nop
nop
nop
add $4739, %r10
mov $30, %rcx
rep movsb
nop
nop
nop
cmp $29658, %rbx
lea addresses_A_ht+0x770b, %rsi
lea addresses_A_ht+0x102a7, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $91, %rcx
rep movsw
nop
nop
nop
nop
cmp $54482, %r13
lea addresses_D_ht+0x72cf, %r10
nop
nop
inc %rbx
mov $0x6162636465666768, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r10)
nop
and $29927, %r15
lea addresses_WT_ht+0x17d3f, %rsi
lea addresses_A_ht+0x152cf, %rdi
cmp %r14, %r14
mov $16, %rcx
rep movsb
nop
nop
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_RW+0x134f, %rbx
nop
nop
nop
nop
sub $39884, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movaps %xmm7, (%rbx)
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_D+0x1a2cf, %r12
nop
nop
nop
cmp $42259, %rcx
movw $0x5152, (%r12)
nop
nop
add %r12, %r12

// Store
lea addresses_D+0x1de3, %rbp
nop
nop
nop
nop
nop
add %r15, %r15
movw $0x5152, (%rbp)
nop
nop
nop
nop
cmp $43445, %r10

// Load
lea addresses_PSE+0x76cf, %rbx
nop
sub %r10, %r10
mov (%rbx), %di
nop
nop
inc %r12

// Store
lea addresses_US+0x1d14f, %r12
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r12)
nop
nop
sub %r10, %r10

// Store
lea addresses_RW+0x1e5cf, %r15
nop
dec %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_D+0x1a2cf, %rcx
dec %rbp
vmovaps (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'52': 3}
52 52 52
*/
