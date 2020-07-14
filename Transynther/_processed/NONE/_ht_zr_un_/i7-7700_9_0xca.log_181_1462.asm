.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rsi
lea addresses_UC_ht+0x17823, %rsi
nop
cmp %rbp, %rbp
movw $0x6162, (%rsi)
add %rbp, %rbp
lea addresses_D_ht+0x19705, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
xor %r15, %r15
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %r11
nop
xor $58937, %r8
pop %rsi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0xce5, %rbp
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rbp)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_A+0x7ba5, %rdi
sub $3416, %rdx
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'46': 24, '8a': 1, '00': 152, '01': 2, '02': 2}
00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8a 00 00 00 00 00 00 01 00 00 00 00 00 46 00 00 00 00 46 00 46 00 01 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 46 00 46 00 46 46 00 00 02 00 46 00 00 00 00 00 02 00 00 46 00 00 00 00 46
*/
