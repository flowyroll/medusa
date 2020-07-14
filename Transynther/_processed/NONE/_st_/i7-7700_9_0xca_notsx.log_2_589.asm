.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1a0fc, %rbx
nop
add $50841, %r13
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x11b46, %rsi
lea addresses_WT_ht+0x17328, %rdi
nop
nop
nop
nop
nop
add $3089, %r11
mov $96, %rcx
rep movsl
nop
nop
nop
nop
cmp %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1db28, %rdi
nop
nop
nop
and %r15, %r15
movb $0x51, (%rdi)
nop
lfence

// Load
lea addresses_WT+0x1f928, %rcx
nop
nop
nop
nop
nop
inc %rdx
mov (%rcx), %r9d
nop
nop
nop
nop
and $3010, %rcx

// REPMOV
lea addresses_RW+0x10d28, %rsi
lea addresses_WT+0x1f928, %rdi
clflush (%rsi)
nop
add $55995, %r13
mov $116, %rcx
rep movsw
cmp %r15, %r15

// Load
lea addresses_WT+0x1f928, %rsi
nop
nop
and %rcx, %rcx
movb (%rsi), %r13b
nop
nop
nop
nop
sub $44220, %r13

// Store
mov $0x6df710000000128, %r9
nop
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
add %r13, %r13

// Load
lea addresses_US+0x4f28, %r13
xor $3676, %r14
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
cmp $42004, %r9

// Store
lea addresses_PSE+0xc000, %r9
nop
inc %r13
movl $0x51525354, (%r9)
nop
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_WT+0x1f928, %r14
inc %r15
mov (%r14), %cx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_RW'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'32': 2}
32 32
*/
