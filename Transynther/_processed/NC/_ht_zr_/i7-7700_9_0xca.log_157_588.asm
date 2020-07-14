.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x427, %r9
nop
nop
cmp $23803, %r14
and $0xffffffffffffffc0, %r9
movntdqa (%r9), %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
nop
nop
nop
and $29120, %rax
lea addresses_D_ht+0x1b127, %rsi
lea addresses_WT_ht+0xe427, %rdi
nop
nop
nop
xor %r8, %r8
mov $72, %rcx
rep movsq
nop
nop
nop
nop
nop
add $8935, %rdi
lea addresses_WT_ht+0x9acf, %r8
nop
nop
nop
nop
nop
xor $41457, %rax
movb $0x61, (%r8)
nop
nop
nop
and %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rbx
push %rdi
push %rsi

// Store
mov $0x267, %r13
nop
nop
dec %r8
movb $0x51, (%r13)
nop
nop
nop
add %r9, %r9

// Store
lea addresses_WT+0x3727, %rdi
xor $61434, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
cmp %r10, %r10

// Faulty Load
mov $0x7cb4ee0000000d27, %rdi
nop
nop
nop
and %r10, %r10
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'46': 33, '00': 124}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 46 00 00 00 46 00 46 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 46 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 46 00 46 00 00 00 00 46 00 00 00 00 46 46 00 00 00 46 00 00 00 46 46 00 00 46 00 00 46 00 00
*/
