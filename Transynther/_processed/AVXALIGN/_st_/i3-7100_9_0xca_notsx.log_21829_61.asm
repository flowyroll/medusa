.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x76da, %rsi
lea addresses_A_ht+0x557c, %rdi
clflush (%rsi)
nop
nop
sub %r12, %r12
mov $97, %rcx
rep movsb
nop
nop
and $26886, %r14
lea addresses_D_ht+0x15a90, %rsi
lea addresses_A_ht+0x1bc7c, %rdi
nop
nop
cmp %r12, %r12
mov $81, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r12
lea addresses_WC_ht+0x667a, %r13
clflush (%r13)
nop
sub %rcx, %rcx
mov (%r13), %edi
nop
nop
sub $45797, %rdi
lea addresses_D_ht+0x1b51c, %rsi
lea addresses_A_ht+0xc87c, %rdi
and $58742, %r14
mov $46, %rcx
rep movsq
nop
nop
and $54929, %r14
lea addresses_normal_ht+0x627c, %rsi
lea addresses_D_ht+0x1e4a8, %rdi
clflush (%rsi)
clflush (%rdi)
nop
xor $51091, %rbp
mov $52, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $13382, %rdi
lea addresses_WC_ht+0x68bc, %rbp
nop
nop
nop
nop
nop
xor $16320, %r14
mov (%rbp), %edi
nop
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0x165ec, %r13
nop
nop
nop
sub %rsi, %rsi
movb (%r13), %cl
nop
sub $55817, %rdi
lea addresses_WT_ht+0x1c67c, %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x60fc, %rsi
lea addresses_WT_ht+0x5eec, %rdi
nop
nop
nop
sub $8904, %r10
mov $32, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x1af7c, %rsi
nop
nop
nop
nop
nop
sub $40735, %r12
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %rbp
nop
sub $12017, %r14
lea addresses_normal_ht+0x449c, %rsi
lea addresses_WC_ht+0x411c, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $44, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_D_ht+0x927c, %rdi
dec %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %rdi
vmovaps %ymm7, (%rdi)
nop
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_A+0x1e23c, %rax
nop
nop
nop
nop
nop
sub $58442, %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%rax)
nop
nop
cmp %rax, %rax

// Store
mov $0x514, %rdi
nop
nop
nop
nop
xor %r15, %r15
movw $0x5152, (%rdi)
nop
nop
xor %r15, %r15

// Store
lea addresses_WT+0x14b12, %r15
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, (%r15)
nop
nop
nop
and $36296, %rsi

// Load
lea addresses_WC+0x128fc, %rbx
nop
nop
nop
nop
nop
sub %r15, %r15
mov (%rbx), %bp
nop
xor $62655, %rdi

// Store
mov $0x27c, %rax
nop
nop
nop
nop
nop
cmp $28640, %r15
movw $0x5152, (%rax)

// Exception!!!
nop
nop
nop
mov (0), %rbx
nop
nop
and $7844, %rdi

// Load
lea addresses_normal+0x97c, %r11
nop
nop
xor %rbx, %rbx
mov (%r11), %r15d
nop
nop
nop
nop
and %r15, %r15

// Store
mov $0x3b85540000000f5c, %rbx
clflush (%rbx)
nop
nop
nop
nop
dec %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%rbx)
nop
nop
xor %rdi, %rdi

// Store
mov $0x67c, %r15
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r15)
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_normal+0xfa7c, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov (%rdi), %r11
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
