.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rbp
push %rbx
push %rcx
lea addresses_D_ht+0x1c6ee, %rcx
nop
nop
nop
nop
nop
and $51543, %r11
movl $0x61626364, (%rcx)
nop
nop
nop
nop
sub $30699, %r9
lea addresses_A_ht+0x712e, %rbx
nop
nop
nop
nop
xor %r12, %r12
movb $0x61, (%rbx)
nop
nop
nop
nop
xor $55409, %r13
lea addresses_WT_ht+0x782e, %rbp
nop
nop
sub $43908, %r12
mov (%rbp), %cx
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x892e, %rbx
nop
nop
nop
nop
xor $55727, %rbp
mov (%rbx), %r9
nop
nop
nop
add %r9, %r9
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_A+0xb12e, %rsi
nop
nop
nop
add %r14, %r14
mov (%rsi), %rdi
xor $48323, %rdi

// Store
lea addresses_A+0x97ae, %rcx
clflush (%rcx)
nop
nop
nop
nop
and $7332, %r12
mov $0x5152535455565758, %r14
movq %r14, (%rcx)
nop
add $6418, %rsi

// Store
lea addresses_RW+0x96ae, %rsi
nop
add %r12, %r12
movw $0x5152, (%rsi)
add %r14, %r14

// Store
lea addresses_A+0x1d82e, %r14
clflush (%r14)
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
inc %rdi

// Faulty Load
lea addresses_US+0x1d52e, %rsi
nop
nop
nop
nop
nop
inc %rcx
vmovntdqa (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 34}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
