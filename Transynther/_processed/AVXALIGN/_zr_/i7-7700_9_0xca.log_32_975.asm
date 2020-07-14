.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rcx
lea addresses_WC_ht+0x2892, %r10
nop
sub %rbx, %rbx
mov (%r10), %r12
nop
nop
nop
dec %rax
lea addresses_D_ht+0xed52, %r8
clflush (%r8)
nop
nop
nop
nop
and %r12, %r12
mov (%r8), %bp
nop
nop
nop
nop
cmp $171, %r8
lea addresses_A_ht+0x19d72, %r12
nop
xor %rcx, %rcx
mov (%r12), %rax
nop
nop
nop
nop
add %rax, %rax
lea addresses_WT_ht+0xe3db, %rax
nop
nop
nop
nop
dec %r12
mov (%rax), %r8
nop
nop
nop
nop
nop
inc %rax
lea addresses_A_ht+0x10992, %r10
clflush (%r10)
nop
nop
xor %rax, %rax
mov (%r10), %r12
sub %rbx, %rbx
lea addresses_A_ht+0x9eb2, %rax
nop
nop
nop
nop
inc %rcx
movb $0x61, (%rax)
nop
nop
nop
nop
inc %rax
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rsi

// Store
lea addresses_WT+0x130d2, %rbx
nop
nop
nop
nop
xor $28992, %r13
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
xor %r13, %r13

// Store
lea addresses_D+0x17cc2, %rsi
cmp %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
xor $53418, %r12

// Faulty Load
lea addresses_A+0x3892, %r13
nop
nop
nop
nop
add %r12, %r12
vmovntdqa (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rsi
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'00': 32}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
