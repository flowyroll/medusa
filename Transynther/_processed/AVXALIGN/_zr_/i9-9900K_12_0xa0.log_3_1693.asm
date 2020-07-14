.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x9294, %r14
nop
nop
add $58865, %r15
movb (%r14), %r11b
nop
nop
inc %rdi
lea addresses_WT_ht+0xb694, %rsi
lea addresses_WT_ht+0x9294, %rdi
nop
nop
nop
nop
sub $17438, %rax
mov $20, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r11
lea addresses_D_ht+0xaffc, %rcx
nop
sub $23120, %rdi
movb $0x61, (%rcx)
and $5483, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rdi

// Load
lea addresses_PSE+0x1fc74, %r14
nop
lfence
mov (%r14), %r8
nop
add %r9, %r9

// Faulty Load
lea addresses_A+0x7a94, %rax
nop
nop
nop
sub %rdi, %rdi
mov (%rax), %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'00': 3}
00 00 00
*/
