.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rdi
push %rsi
lea addresses_normal_ht+0x2e72, %rsi
cmp %r9, %r9
movb (%rsi), %r15b
nop
nop
inc %rbp
lea addresses_D_ht+0x1cf32, %r12
nop
inc %r11
movb $0x61, (%r12)
nop
nop
nop
nop
nop
and $38022, %r15
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0xd7f2, %rsi
lea addresses_WC+0x1858e, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $8, %rcx
rep movsw
dec %rsi

// Load
lea addresses_WC+0x2756, %rbx
clflush (%rbx)
nop
nop
nop
nop
add $916, %r11
mov (%rbx), %esi
nop
xor %rbx, %rbx

// Store
lea addresses_WC+0x1fe16, %rbx
nop
nop
xor $13918, %r8
movl $0x51525354, (%rbx)
nop
nop
and %r8, %r8

// Faulty Load
lea addresses_D+0x7932, %r11
nop
inc %r8
vmovups (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_US'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 9}, 'OP': 'STOR'}
{'36': 18}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
