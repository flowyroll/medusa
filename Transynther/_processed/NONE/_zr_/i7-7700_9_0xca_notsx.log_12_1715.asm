.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x188b0, %rsi
lea addresses_normal_ht+0x138e1, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %rbx
mov $68, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $18790, %r10
lea addresses_D_ht+0x1d7e1, %rdi
nop
inc %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
dec %rbx
lea addresses_normal_ht+0x15c61, %r10
nop
sub %r11, %r11
movw $0x6162, (%r10)
nop
nop
and $49103, %rsi
lea addresses_WT_ht+0x8fe1, %rsi
lea addresses_A_ht+0x12ddd, %rdi
nop
nop
nop
and $55747, %rax
mov $86, %rcx
rep movsb
nop
nop
nop
add %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x18411, %rsi
nop
nop
add $3309, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
nop
inc %r11

// Store
lea addresses_normal+0x67cb, %r10
xor $1996, %r11
movl $0x51525354, (%r10)
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_RW+0x12be1, %rdi
nop
nop
nop
xor %r13, %r13
movw $0x5152, (%rdi)
nop
nop
nop
add %r10, %r10

// Load
lea addresses_D+0xbbe1, %r14
nop
nop
nop
cmp %r10, %r10
mov (%r14), %cx
nop
nop
nop
nop
sub %rsi, %rsi

// Load
lea addresses_A+0x137e1, %rcx
sub %r11, %r11
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
nop
nop
nop
nop
nop
xor $38021, %rcx

// Store
mov $0x3ebaa100000009e1, %r13
nop
cmp $38978, %rdi
movl $0x51525354, (%r13)
nop
nop
nop
cmp $54843, %r11

// Store
lea addresses_WC+0x59a1, %r11
nop
nop
nop
add %r10, %r10
movw $0x5152, (%r11)
add %rcx, %rcx

// Store
lea addresses_UC+0x1072d, %rdi
nop
nop
nop
xor %rcx, %rcx
movb $0x51, (%rdi)
nop
nop
nop
nop
dec %rdi

// Faulty Load
lea addresses_A+0x137e1, %r10
nop
nop
dec %rdi
mov (%r10), %r14d
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
