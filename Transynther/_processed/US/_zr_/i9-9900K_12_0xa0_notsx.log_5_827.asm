.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x190dd, %rax
nop
nop
xor $2851, %r8
movl $0x61626364, (%rax)
nop
xor %rax, %rax
lea addresses_normal_ht+0x19432, %r12
sub $34806, %rbx
movups (%r12), %xmm5
vpextrq $0, %xmm5, %r11
nop
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x168d2, %rsi
lea addresses_D_ht+0x5ff2, %rdi
nop
sub %rax, %rax
mov $21, %rcx
rep movsb
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x164c1, %rsi
lea addresses_WC_ht+0x3196, %rdi
nop
nop
nop
dec %r9
mov $96, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0xc9c3, %rdi
sub %r8, %r8
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
nop
cmp $51822, %r9
lea addresses_WT_ht+0x107b2, %rsi
lea addresses_D_ht+0x136b2, %rdi
nop
sub $48181, %r9
mov $81, %rcx
rep movsb
nop
nop
and $27265, %r8
lea addresses_UC_ht+0x198ae, %rsi
lea addresses_WC_ht+0x16a02, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $77, %rcx
rep movsq
nop
nop
nop
nop
and $56503, %r11
lea addresses_WT_ht+0x4ab2, %rdi
nop
nop
dec %r9
movb (%rdi), %bl
nop
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Faulty Load
lea addresses_US+0x46b2, %r15
nop
nop
nop
nop
nop
inc %r14
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'00': 5}
00 00 00 00 00
*/
