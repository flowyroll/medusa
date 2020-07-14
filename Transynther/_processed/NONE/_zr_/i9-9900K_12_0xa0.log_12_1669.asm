.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11466, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
movb (%rdi), %r13b
sub %r8, %r8
lea addresses_A_ht+0x1dce6, %rcx
nop
nop
dec %r9
movb $0x61, (%rcx)
nop
nop
nop
xor $62201, %rdi
lea addresses_D_ht+0x15e66, %rsi
lea addresses_UC_ht+0x33e6, %rdi
nop
nop
add %rbp, %rbp
mov $13, %rcx
rep movsw
nop
nop
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx

// Store
lea addresses_PSE+0x4f33, %rbp
nop
nop
nop
dec %r11
movb $0x51, (%rbp)
nop
nop
sub %r13, %r13

// Store
lea addresses_RW+0x15466, %r12
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r12)
nop
nop
nop
nop
nop
sub $3708, %r12

// Store
mov $0x29d95d0000000666, %r13
nop
nop
sub $31974, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
nop
and $13894, %r11

// Faulty Load
lea addresses_WT+0x14e66, %r8
nop
nop
dec %rcx
mov (%r8), %bx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
