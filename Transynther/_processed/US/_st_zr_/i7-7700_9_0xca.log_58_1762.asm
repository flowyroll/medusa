.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x141b6, %rcx
clflush (%rcx)
nop
xor $49034, %r8
mov $0x6162636465666768, %r11
movq %r11, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
xor $32425, %rdi
lea addresses_A_ht+0x19cbe, %r8
nop
nop
nop
nop
and $56707, %r9
movb (%r8), %r12b
nop
nop
nop
nop
cmp $41067, %r12
lea addresses_WC_ht+0x16c3e, %r9
and %r11, %r11
movw $0x6162, (%r9)
nop
nop
nop
and $6034, %rdi
lea addresses_UC_ht+0x18fbe, %r8
nop
nop
nop
inc %r12
mov (%r8), %rsi
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0xc63e, %rdi
nop
nop
nop
dec %rsi
movl $0x61626364, (%rdi)
nop
add %rdi, %rdi
lea addresses_UC_ht+0x1b2c6, %r12
and $35693, %r9
mov (%r12), %esi
nop
nop
nop
nop
cmp $12834, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0x888e, %rsi
lea addresses_normal+0x1263e, %rdi
and $17814, %r8
mov $80, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $6348, %rdi

// Faulty Load
lea addresses_US+0x963e, %rsi
nop
nop
sub $6493, %rbx
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'33': 6, '00': 52}
00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 33 00 00 00 00 33 00 33 00 00 00 00 00 00 00 00
*/
