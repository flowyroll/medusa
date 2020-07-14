.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x10717, %rsi
nop
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rsi)
nop
sub $47247, %rdi
lea addresses_UC_ht+0x1a717, %rsi
lea addresses_A_ht+0x5b17, %rdi
add %rbp, %rbp
mov $23, %rcx
rep movsw
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbp

// Load
lea addresses_A+0x9317, %rax
nop
nop
nop
nop
cmp %r13, %r13
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
nop
dec %rax

// Store
lea addresses_PSE+0xad17, %r14
nop
nop
sub %rax, %rax
movw $0x5152, (%r14)
nop
and %r11, %r11

// Store
lea addresses_A+0x5717, %r15
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movntdq %xmm0, (%r15)
nop
nop
nop
xor $41552, %rax

// Store
lea addresses_D+0x1af17, %r8
nop
nop
inc %r14
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_A+0x5717, %r13
add %rax, %rax
movaps (%r13), %xmm5
vpextrq $0, %xmm5, %r14
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}}
{'50': 13404, '00': 545, '58': 7880}
58 58 58 50 58 50 58 50 50 58 50 58 50 50 50 58 50 50 50 58 50 50 50 58 50 50 58 50 50 50 50 50 50 50 58 58 50 50 50 50 58 50 58 50 50 50 58 50 58 58 50 00 50 50 50 58 50 58 50 58 58 50 50 50 50 50 58 00 50 50 50 58 50 50 58 50 50 50 50 50 58 58 58 50 50 50 50 50 50 58 58 50 58 50 58 50 50 50 58 50 58 58 58 58 58 50 50 50 58 50 50 50 50 50 50 58 58 58 50 58 50 58 50 50 50 50 50 58 50 58 50 58 58 50 50 50 50 58 58 50 50 50 50 50 50 58 58 50 58 58 50 58 50 50 50 58 58 50 58 50 58 50 58 50 50 50 58 50 50 50 58 50 58 50 50 50 50 50 50 50 50 00 50 58 50 50 50 58 50 50 50 50 50 58 58 50 58 50 50 50 50 50 50 50 58 58 50 50 58 50 58 58 58 58 50 50 58 50 50 50 00 50 58 58 58 58 58 50 50 58 50 50 58 58 50 50 58 58 50 58 58 50 50 58 50 50 50 50 50 50 50 58 58 58 50 50 50 50 50 58 58 50 50 50 58 00 50 50 58 50 00 58 58 58 58 58 50 50 50 58 50 00 50 50 50 50 50 50 50 58 50 50 50 50 58 58 50 58 50 50 58 58 50 58 50 50 58 58 50 58 58 50 50 58 58 50 50 58 50 50 58 50 50 50 50 58 50 50 58 50 58 58 50 50 50 58 50 50 50 50 50 50 50 50 50 50 58 58 58 58 50 50 00 50 50 58 50 50 50 50 50 58 50 50 00 50 50 58 50 50 58 58 50 58 50 58 50 50 58 50 50 50 58 50 58 50 58 58 50 50 50 58 50 50 50 50 50 50 58 58 50 58 50 50 50 58 58 50 50 58 58 58 58 58 50 50 50 50 58 58 50 58 50 58 50 50 50 58 50 58 58 50 50 50 50 50 50 50 50 58 58 50 50 58 50 50 50 50 58 58 58 58 58 50 50 58 58 50 50 50 58 50 58 58 58 50 58 58 50 58 58 50 50 58 50 58 50 58 50 50 58 50 50 50 50 58 50 50 00 50 58 50 50 58 58 58 58 50 50 50 58 50 58 58 50 50 50 50 50 58 58 50 50 50 58 50 50 50 50 58 58 50 50 50 50 58 50 58 58 50 50 50 50 50 58 58 58 50 50 50 50 50 50 50 58 58 50 58 50 50 58 50 00 50 00 50 58 58 50 50 58 50 58 58 58 50 58 50 50 50 58 50 58 58 58 50 50 50 50 50 50 50 58 50 58 50 50 50 50 58 50 50 50 58 50 58 58 50 50 50 50 50 58 50 58 58 58 50 50 58 50 50 50 50 50 58 58 50 58 58 50 58 50 50 50 00 50 58 50 58 50 50 50 58 58 50 58 50 50 58 50 50 58 50 58 58 50 50 50 50 50 50 50 50 50 00 50 58 50 50 50 50 58 50 58 58 50 58 50 50 50 58 50 50 58 58 50 58 50 58 50 50 50 58 50 50 50 50 58 50 58 58 58 50 50 58 58 50 50 58 50 58 50 58 50 58 58 50 50 58 50 58 50 50 58 58 50 50 50 50 50 50 50 58 58 50 58 50 50 50 58 50 50 58 50 50 58 50 58 58 50 50 58 58 58 50 58 50 58 50 50 50 50 50 50 00 50 50 50 58 50 58 50 58 58 50 50 58 58 50 58 50 50 50 58 58 58 50 58 50 50 50 50 00 50 50 50 50 58 50 50 50 58 00 58 58 50 00 58 50 58 58 50 50 58 50 50 50 50 50 50 50 50 50 50 58 58 58 50 58 50 50 58 50 50 50 58 58 58 50 50 50 50 50 50 50 58 50 58 50 58 58 50 00 58 50 58 50 50 00 58 50 58 58 58 50 50 58 50 00 50 50 58 58 50 50 58 50 50 50 50 50 50 58 50 50 50 58 58 58 50 50 50 58 50 50 50 58 50 50 50 58 50 58 58 50 58 50 58 50 50 50 50 58 50 50 58 58 50 58 50 58 50 50 50 58 50 50 50 50 50 50 58 50 50 58 58 50 00 58 50 58 58 50 00 50 58 50 50 50 50 50 50 50 50 50 58 58 58 58 50 50 58 50 58 50 50 50 50 50 58 50 58 50 50 50 50 50 58 50 50 50 58 58 00 50 58 50 58 50 50 50 50 50 50 58 58 58 58 50 58 58 58 58 50 58 50 58 58 58
*/
