.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x106a9, %r8
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x18735, %rsi
lea addresses_normal_ht+0x1e7cd, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $24, %rcx
rep movsw
sub %rsi, %rsi
lea addresses_WC_ht+0x9361, %rsi
lea addresses_UC_ht+0x194c9, %rdi
nop
nop
nop
nop
add $53177, %r11
mov $43, %rcx
rep movsq
nop
dec %rcx
lea addresses_D_ht+0x103e9, %rsi
clflush (%rsi)
nop
xor %r12, %r12
movb $0x61, (%rsi)
nop
nop
nop
nop
and $4335, %r8
lea addresses_WT_ht+0x58c9, %r11
mfence
movb (%r11), %r12b
nop
xor $46295, %rsi
lea addresses_WC_ht+0x19aa1, %rsi
lea addresses_UC_ht+0x15401, %rdi
and $42764, %r9
mov $7, %rcx
rep movsq
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x16849, %r9
xor $26443, %r11
and $0xffffffffffffffc0, %r9
vmovaps (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x9a41, %rsi
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
and $0xffffffffffffffc0, %rsi
movaps %xmm5, (%rsi)
nop
nop
nop
nop
nop
and $26694, %rcx
lea addresses_WT_ht+0x16f61, %r12
clflush (%r12)
nop
nop
nop
nop
nop
mfence
mov (%r12), %r10w
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x3cc9, %r10
nop
nop
nop
nop
inc %r11
vmovups (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1db39, %rcx
nop
nop
nop
nop
nop
sub $62958, %rsi
movw $0x6162, (%rcx)
nop
cmp $48175, %rdi
lea addresses_WT_ht+0x1c8c9, %r12
nop
nop
nop
nop
and $54024, %rcx
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r11
nop
dec %rsi
lea addresses_normal_ht+0x1cd89, %rsi
lea addresses_WC_ht+0x1c1c9, %rdi
nop
dec %r12
mov $39, %rcx
rep movsw
nop
cmp %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rbx

// Store
lea addresses_RW+0xacb9, %r14
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%r14)
nop
nop
nop
add %r10, %r10

// Store
lea addresses_UC+0x92c9, %r10
nop
nop
nop
nop
add $15348, %r13
movb $0x51, (%r10)
nop
nop
add $6721, %r8

// Store
lea addresses_D+0x17f51, %r10
dec %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r10)
nop
nop
sub %r8, %r8

// Faulty Load
lea addresses_normal+0x80c9, %r10
cmp $5836, %rbp
movb (%r10), %r14b
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'34': 2}
34 34
*/
