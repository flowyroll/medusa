.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x55ac, %r9
nop
nop
inc %r11
mov $0x6162636465666768, %r12
movq %r12, (%r9)
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x63e2, %r10
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r10)
add $35131, %rcx
lea addresses_WC_ht+0x83e2, %rsi
lea addresses_D_ht+0x1bae2, %rdi
nop
nop
nop
sub $53424, %r9
mov $104, %rcx
rep movsq
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x9de2, %r12
nop
nop
xor %rcx, %rcx
movb $0x61, (%r12)
nop
and $16431, %rdi
lea addresses_D_ht+0x9c32, %rsi
lea addresses_UC_ht+0xf5a2, %rdi
nop
add $49208, %r14
mov $8, %rcx
rep movsq
nop
nop
nop
xor $31620, %r12
lea addresses_UC_ht+0x4fe2, %r9
nop
nop
nop
nop
inc %rsi
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x161e2, %r9
nop
nop
nop
nop
sub %r14, %r14
and $0xffffffffffffffc0, %r9
movntdqa (%r9), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x1ace2, %rdx
nop
nop
nop
nop
nop
mfence
movb $0x61, (%rdx)
cmp $59296, %rcx
lea addresses_A_ht+0xc3e2, %r10
nop
nop
cmp $30847, %r11
movl $0x61626364, (%r10)
nop
add %r10, %r10
lea addresses_normal_ht+0xbbe2, %rsi
lea addresses_WT_ht+0x55e2, %rdi
nop
nop
add %r9, %r9
mov $5, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r9
lea addresses_A_ht+0x103d2, %r9
nop
nop
xor %r12, %r12
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
nop
inc %r9
lea addresses_D_ht+0xe922, %rsi
nop
inc %r10
movb $0x61, (%rsi)
nop
nop
and %r12, %r12
lea addresses_D_ht+0xb602, %rsi
lea addresses_UC_ht+0x1eb52, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $126, %rcx
rep movsw
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x183e2, %rdi
nop
add $32918, %rax
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
and %r13, %r13

// REPMOV
lea addresses_normal+0x6d98, %rsi
lea addresses_PSE+0x2ac1, %rdi
nop
nop
nop
add $20245, %rax
mov $25, %rcx
rep movsq
and $36928, %r13

// Store
lea addresses_D+0x995e, %rbx
nop
nop
nop
cmp %r13, %r13
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_normal+0x189e2, %r14
nop
nop
cmp %rsi, %rsi
movb $0x51, (%r14)
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_US+0x1ad7a, %r14
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r14)
nop
xor %r14, %r14

// Load
lea addresses_UC+0xe7ba, %rdi
cmp %rax, %rax
movb (%rdi), %r14b
nop
nop
add %r13, %r13

// Faulty Load
lea addresses_PSE+0x183e2, %rdi
nop
nop
nop
nop
nop
sub $10869, %rsi
movb (%rdi), %al
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'33': 548}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
