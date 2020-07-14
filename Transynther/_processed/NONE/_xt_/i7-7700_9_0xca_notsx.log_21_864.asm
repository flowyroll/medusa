.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbx
lea addresses_WT_ht+0x9553, %r12
clflush (%r12)
nop
nop
nop
cmp %rax, %rax
movb (%r12), %bl
nop
nop
nop
cmp $50125, %r11
pop %rbx
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x13d93, %r14
nop
xor $41682, %rsi
movb $0x51, (%r14)
nop
nop
nop
nop
dec %r14

// REPMOV
lea addresses_normal+0x9193, %rsi
lea addresses_WC+0x11b33, %rdi
cmp $31103, %r11
mov $103, %rcx
rep movsw
nop
and %r11, %r11

// Store
lea addresses_D+0x1dc13, %rcx
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
mov $0xec16a0000000813, %rax
nop
xor $61874, %rsi
movl $0x51525354, (%rax)
nop
nop
add %rax, %rax

// Store
lea addresses_D+0x2d13, %rsi
nop
nop
nop
nop
nop
cmp $42726, %r14
movb $0x51, (%rsi)
dec %rdi

// Store
lea addresses_A+0xc939, %r11
clflush (%r11)
nop
nop
nop
add $54986, %r14
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_UC+0x17e5d, %rax
nop
dec %r10
movb $0x51, (%rax)
nop
nop
nop
xor $751, %r14

// Faulty Load
lea addresses_D+0x4c13, %r11
nop
add $50747, %rcx
mov (%r11), %si
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'36': 21}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
