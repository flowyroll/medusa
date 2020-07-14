.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x189fd, %rsi
lea addresses_WC_ht+0xbd8d, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $62, %rcx
rep movsl
add %rcx, %rcx
lea addresses_WC_ht+0xb085, %r9
nop
nop
and $50190, %rax
mov (%r9), %r11
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x1c0fd, %r13
clflush (%r13)
sub %rsi, %rsi
movw $0x6162, (%r13)
nop
and %rcx, %rcx
lea addresses_WC_ht+0x37d, %rcx
nop
nop
nop
nop
nop
inc %r11
movb $0x61, (%rcx)
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rbx

// Faulty Load
lea addresses_US+0x179fd, %r15
nop
xor $54247, %r13
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'79': 14, 'f0': 136, '47': 2136, '00': 5834, 'ff': 11897, '53': 1772, '10': 40}
ff ff ff ff 00 ff ff 00 ff ff ff 47 00 53 ff ff 00 ff ff ff ff ff ff 00 ff 00 ff ff 00 00 00 ff ff ff 47 00 53 ff ff ff ff ff ff ff 00 ff 00 ff ff 47 00 47 ff 47 47 ff ff ff 53 ff 00 ff ff 00 ff 53 ff 00 ff ff ff ff 00 ff ff ff 00 53 00 ff ff ff ff 00 ff 47 00 ff 53 ff ff ff ff 47 00 ff 00 47 00 00 ff ff 53 ff ff ff ff 00 ff 00 ff ff 00 47 00 ff ff 00 53 ff 00 ff ff ff 00 00 ff 00 00 ff ff ff 00 00 00 ff ff 53 ff ff 00 00 47 47 ff ff 00 00 00 00 ff ff ff ff ff ff 53 47 ff 00 47 00 ff 47 ff ff ff 00 ff 53 ff ff 00 ff ff ff 00 ff 53 ff 47 00 ff 47 00 53 ff 00 ff ff ff ff 47 ff ff 00 ff 00 00 ff 00 47 ff 00 ff 00 ff 00 ff ff 00 00 ff 00 ff 47 ff 47 47 ff 53 47 ff 00 ff ff ff 00 ff 00 00 47 ff ff 00 ff ff ff 00 ff ff 00 53 00 ff 00 00 47 ff 00 ff ff ff ff 00 00 ff ff 47 47 ff 47 00 ff 53 00 ff 47 ff 47 ff ff 00 ff ff ff 53 ff 47 00 53 ff ff 47 00 ff ff ff ff ff ff ff 00 ff 53 ff ff 00 ff ff ff 00 ff 53 47 ff 53 ff 53 ff ff 53 ff 47 00 47 ff 00 00 47 ff 00 ff 00 ff ff 00 ff ff 00 00 ff 53 47 ff 53 ff 47 00 00 ff 53 00 ff ff ff ff ff ff ff ff ff 47 00 ff 00 ff 47 ff ff 00 00 00 ff ff ff 47 47 ff ff 00 00 ff 00 ff ff ff 00 00 00 00 ff 47 53 ff ff ff ff ff 00 00 00 ff ff ff 00 00 53 ff 00 00 ff 47 00 ff ff ff ff ff 53 ff ff 00 ff 00 00 ff ff ff ff ff 00 ff ff ff 00 00 53 ff ff ff ff 00 ff ff ff 00 ff ff 00 47 ff ff ff 53 ff ff ff 00 ff ff ff ff 47 ff ff ff ff ff ff 00 ff ff 00 ff ff ff ff ff 47 00 ff 53 ff ff 00 ff ff 47 53 53 00 ff ff 00 ff ff ff ff 53 ff 00 53 ff ff 00 ff ff 53 ff ff ff ff ff ff ff ff ff 00 00 00 00 ff 00 47 ff 47 ff ff 00 00 47 00 ff ff 00 ff 53 00 ff 53 ff 53 00 ff ff ff 00 00 ff 53 ff 47 00 00 00 00 ff 00 ff ff 00 47 ff ff ff 00 00 00 ff ff 00 ff ff ff 47 47 ff ff 00 ff ff 53 ff 00 ff ff 00 53 ff ff ff ff ff ff ff 00 00 53 00 ff ff 47 00 00 ff ff ff ff ff ff ff ff ff 00 47 47 53 53 00 ff ff ff ff 47 ff ff ff 00 ff 00 00 ff ff 00 00 00 00 ff ff 00 ff ff 00 00 00 ff 00 00 ff 47 ff 00 47 00 ff ff 53 ff ff 00 ff ff ff 00 47 ff 53 47 53 00 ff ff ff 00 ff ff 00 ff 00 47 00 53 ff 00 47 00 00 00 00 ff 47 ff 53 47 ff ff 00 ff ff ff 00 47 53 ff ff ff 00 ff 47 00 47 00 ff 00 ff ff ff ff 00 53 47 ff 00 ff ff 00 ff 00 ff 00 ff ff 00 ff 00 ff ff ff ff ff ff 00 ff ff 00 00 00 00 53 47 00 ff 00 ff 00 00 ff 47 00 ff ff 00 ff ff 47 00 ff 00 ff ff ff 00 ff ff 00 ff ff ff 00 47 00 ff ff ff 00 00 53 ff 53 ff ff ff 00 ff ff ff ff 47 ff 53 ff 00 ff 00 ff 53 00 ff ff ff ff 00 00 ff ff ff ff 00 ff ff 00 ff 47 ff 00 53 ff 00 ff ff ff ff 00 47 ff ff 53 00 00 00 47 ff ff ff 00 ff ff 00 ff 00 00 ff ff 00 00 47 00 00 00 ff 53 ff ff ff 47 47 ff 00 ff 00 00 ff 47 ff ff ff 00 00 00 ff 00 ff 47 ff ff ff ff 53 00 53 47 00 ff 53 ff ff ff 00 ff ff 47 00 00 00 ff 53 ff 00 00 ff ff ff 00 ff 00 ff ff 00 ff 00 00 ff ff ff ff 00 00 47 ff ff ff 00 ff ff 53 ff ff 00 ff ff 53 47 00 ff 47 47 ff ff 47 47 ff 00 ff 00 ff ff 00 ff ff ff 47 00 47 ff ff 47 ff ff ff 53 47 00 00 ff ff ff ff 00 00 ff ff ff ff 00 00 00 00 00 53 ff ff ff ff ff ff ff 47 53 ff ff ff 47 00 ff ff 00 ff 00 00
*/
