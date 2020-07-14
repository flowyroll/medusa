.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r8
push %r9
push %rax
lea addresses_A_ht+0x13fae, %r12
nop
nop
nop
dec %r13
mov (%r12), %ax
nop
nop
nop
cmp $36529, %r11
lea addresses_D_ht+0xb6e, %r8
nop
nop
and $58053, %r9
movb $0x61, (%r8)
nop
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0xbffb, %r13
nop
nop
nop
nop
sub $26855, %r8
movl $0x61626364, (%r13)
nop
nop
nop
and %r8, %r8
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x13f4c, %r15
nop
and %r9, %r9
movb $0x51, (%r15)
nop
nop
cmp %rax, %rax

// REPMOV
lea addresses_WC+0x8736, %rsi
lea addresses_normal+0x1ef6e, %rdi
nop
nop
xor $47210, %r10
mov $63, %rcx
rep movsl
nop
nop
nop
add $16425, %rcx

// Faulty Load
lea addresses_D+0x276e, %rdi
nop
sub $58474, %r9
vmovntdqa (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'19': 1, '70': 20781, '00': 1008, '08': 4, '38': 31, '06': 2, '29': 2}
06 06 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 00 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 00 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 70 70 00 70 70 70 70 70 70 70 70 00 00 00 00 00 00 70 70 70 00 00 00 70 00 00 70 00 00 00 70 00 00 70 00 00 00 00 70 00 70 70 00 70 00 70 70 70 00 00 00 70 70 00 70 70 70 00 00 00 00 70 00 70 00 70 00 70 70 70 70 70 70 70 70 70 00 70 70 00 00 70 00 00 00 00 00 00 70 70 70 00 00 70 00 00 00 70 70 70 70 70 70 70 00 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70
*/
