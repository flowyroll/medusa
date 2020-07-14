.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x7242, %rbp
nop
nop
cmp %r12, %r12
movl $0x61626364, (%rbp)
nop
cmp $11479, %rbx
lea addresses_WT_ht+0x4f42, %rsi
lea addresses_UC_ht+0x100b2, %rdi
sub %rbp, %rbp
mov $105, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0xf042, %rbp
clflush (%rbp)
cmp %r12, %r12
vmovups (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
xor $16477, %rbp
lea addresses_A_ht+0x4e42, %rdi
clflush (%rdi)
and %r12, %r12
mov (%rdi), %ebp
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x64c2, %rsi
lea addresses_WC_ht+0x14a42, %rdi
nop
cmp %r10, %r10
mov $11, %rcx
rep movsb
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x175c2, %r10
clflush (%r10)
nop
nop
nop
nop
nop
add $247, %r15
movw $0x6162, (%r10)
and %rbx, %rbx
lea addresses_UC_ht+0x24b4, %rsi
lea addresses_WC_ht+0x15042, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $86, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $16642, %rsi
lea addresses_D_ht+0x1c282, %rdi
nop
sub %r12, %r12
mov (%rdi), %rsi
add %rdi, %rdi
lea addresses_D_ht+0x1c242, %rbx
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, (%rbx)
nop
cmp $2032, %rbx
lea addresses_normal_ht+0x13522, %rsi
lea addresses_WT_ht+0x1cbff, %rdi
nop
nop
nop
sub %r10, %r10
mov $29, %rcx
rep movsq
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x18242, %rsi
lea addresses_WT_ht+0xadba, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $126, %rcx
rep movsw
nop
and %rbx, %rbx
lea addresses_D_ht+0x15752, %rbx
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x1318, %rsi
lea addresses_normal_ht+0x5142, %rdi
clflush (%rsi)
nop
cmp %rbp, %rbp
mov $10, %rcx
rep movsw
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rdi

// Faulty Load
lea addresses_PSE+0x14242, %r15
nop
nop
nop
nop
nop
sub %r13, %r13
movups (%r15), %xmm5
vpextrq $1, %xmm5, %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rdi
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
