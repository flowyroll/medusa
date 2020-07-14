.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rdi
lea addresses_A_ht+0x105e1, %rdi
and $25247, %rbp
movb $0x61, (%rdi)
nop
nop
nop
nop
inc %r8
lea addresses_D_ht+0x3de1, %r8
nop
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %r9
movq %r9, (%r8)
nop
cmp $28863, %r11
lea addresses_UC_ht+0x15a70, %rax
nop
nop
nop
nop
add %r15, %r15
movl $0x61626364, (%rax)
add $7826, %r11
lea addresses_WC_ht+0x113e1, %r8
nop
nop
nop
nop
cmp $18407, %rax
mov (%r8), %di
nop
nop
dec %r8
lea addresses_D_ht+0x10531, %r8
nop
and %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r8)
nop
cmp $52532, %rbp
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rbx
push %rcx

// Faulty Load
lea addresses_US+0x19de1, %r12
nop
nop
nop
nop
and %rcx, %rcx
movups (%r12), %xmm2
vpextrq $1, %xmm2, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
