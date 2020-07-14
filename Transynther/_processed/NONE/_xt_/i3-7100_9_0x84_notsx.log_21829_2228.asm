.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1abd1, %rsi
lea addresses_WT_ht+0xb371, %rdi
nop
nop
nop
add %r14, %r14
mov $0, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $29170, %rcx
lea addresses_WT_ht+0x8e71, %r12
nop
nop
nop
nop
mfence
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
nop
nop
sub $28666, %rdx
lea addresses_normal_ht+0x13a45, %r12
nop
nop
add %rsi, %rsi
movw $0x6162, (%r12)
nop
sub $25323, %rsi
lea addresses_UC_ht+0x6731, %rax
nop
nop
nop
nop
nop
and $22506, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xb0b1, %rcx
add %rax, %rax
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x4031, %rdx
nop
nop
nop
nop
and %r12, %r12
mov (%rdx), %cx
nop
nop
nop
cmp $21812, %rsi
lea addresses_D_ht+0x1e471, %rsi
lea addresses_WT_ht+0x809, %rdi
nop
nop
nop
sub %r12, %r12
mov $34, %rcx
rep movsb
nop
cmp $25263, %rax
lea addresses_UC_ht+0x155b1, %r14
nop
nop
nop
nop
cmp $61351, %rsi
movb (%r14), %dl
nop
nop
and %rax, %rax
lea addresses_normal_ht+0xa441, %rax
and %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
and $0xffffffffffffffc0, %rax
movntdq %xmm2, (%rax)
nop
nop
nop
add $33434, %rcx
lea addresses_A_ht+0x31, %rsi
lea addresses_normal_ht+0x1cb1, %rdi
clflush (%rsi)
nop
nop
nop
sub %rax, %rax
mov $57, %rcx
rep movsw
nop
cmp $17559, %rdi
lea addresses_UC_ht+0x1bdfb, %rsi
lea addresses_D_ht+0x6af1, %rdi
nop
nop
add %r11, %r11
mov $85, %rcx
rep movsw
nop
nop
nop
nop
and $31783, %rcx
lea addresses_WC_ht+0x1ddb1, %rdi
clflush (%rdi)
nop
and $2066, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
dec %r14
lea addresses_WT_ht+0xd671, %r12
xor %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r12)
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0x1ef71, %rsi
nop
nop
sub %rcx, %rcx
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %r14
nop
nop
add %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rdi
push %rsi

// Store
lea addresses_normal+0x2f91, %rax
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_WC+0x14a31, %r8
cmp %r12, %r12
movb (%r8), %r14b
nop
cmp %r14, %r14

// Store
lea addresses_RW+0x1b0e5, %rsi
add %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovaps %ymm4, (%rsi)
nop
nop
and $63979, %rsi

// Store
mov $0x7af0bf0000000f31, %r8
sub $30266, %rsi
movw $0x5152, (%r8)
nop
nop
nop
cmp $41744, %r15

// Store
lea addresses_D+0x16539, %r8
nop
and %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_UC+0x8db1, %r8
nop
nop
nop
sub %rax, %rax
movl $0x51525354, (%r8)
nop
cmp $49643, %r14

// Load
lea addresses_PSE+0x15db1, %r15
nop
nop
nop
cmp %r14, %r14
vmovaps (%r15), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
nop
xor %rdi, %rdi

// Store
mov $0xae1, %rdi
cmp %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
cmp $60435, %r15

// Store
mov $0x408fe90000000f31, %r14
nop
nop
sub %rsi, %rsi
movl $0x51525354, (%r14)
inc %r8

// Store
lea addresses_normal+0x4b1, %r15
nop
nop
nop
inc %rax
movw $0x5152, (%r15)
nop
and $10384, %rsi

// Store
lea addresses_WC+0x9db1, %r15
dec %rdi
movb $0x51, (%r15)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_PSE+0x15db1, %rsi
nop
nop
nop
cmp %r14, %r14
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
