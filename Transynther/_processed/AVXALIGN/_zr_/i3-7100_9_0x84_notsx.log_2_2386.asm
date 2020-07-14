.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x87ef, %rdi
nop
nop
nop
nop
add %rsi, %rsi
mov (%rdi), %r13
nop
nop
nop
nop
xor $16623, %r9
lea addresses_WT_ht+0x3068, %r14
nop
nop
nop
nop
nop
add $40173, %r8
movups (%r14), %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
nop
nop
and $47328, %rsi
lea addresses_normal_ht+0x1e110, %rsi
lea addresses_WT_ht+0x1eaf0, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $13, %rcx
rep movsw
nop
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0xbee8, %r14
nop
nop
nop
nop
nop
and $33523, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r14)
nop
sub $53865, %rsi
lea addresses_WC_ht+0x19428, %r8
nop
nop
inc %r14
mov $0x6162636465666768, %r9
movq %r9, (%r8)
nop
nop
add $65287, %r13
lea addresses_WC_ht+0x6b28, %r8
nop
nop
and $10289, %rdi
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0xc528, %r8
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x6e28, %rsi
lea addresses_normal_ht+0xa228, %rdi
nop
nop
nop
sub $60029, %r14
mov $39, %rcx
rep movsl
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x1768, %rsi
lea addresses_A_ht+0x106c8, %rdi
and $54276, %r14
mov $61, %rcx
rep movsq
cmp $38495, %r14
lea addresses_UC_ht+0xad88, %rcx
add $1356, %r13
movw $0x6162, (%rcx)
nop
cmp %r9, %r9
lea addresses_normal_ht+0x9e28, %rsi
lea addresses_UC_ht+0x19ab8, %rdi
nop
nop
nop
nop
nop
sub $60278, %rbx
mov $110, %rcx
rep movsq
dec %rbx
lea addresses_UC_ht+0x9b90, %rsi
nop
nop
nop
nop
nop
and $20438, %rbx
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rdx

// Faulty Load
lea addresses_US+0x16228, %r14
nop
nop
nop
cmp %r8, %r8
mov (%r14), %edx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 2}
00 00
*/
