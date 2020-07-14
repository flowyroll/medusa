.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x7d35, %rsi
lea addresses_D_ht+0x14071, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $38, %rcx
rep movsb
add $54766, %r11
lea addresses_WT_ht+0x166d5, %rsi
lea addresses_normal_ht+0x16635, %rdi
and $11697, %r11
mov $27, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0xc5c5, %r13
nop
nop
nop
add $54469, %r10
mov (%r13), %r11d
nop
nop
nop
nop
nop
add $8558, %r13
lea addresses_D_ht+0xd5f9, %rdi
nop
nop
nop
sub $51616, %r10
mov (%rdi), %r11
nop
nop
nop
sub $24474, %rcx
lea addresses_A_ht+0x4a35, %r13
nop
sub $15322, %rsi
movups (%r13), %xmm1
vpextrq $1, %xmm1, %rdi
nop
xor $39672, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rbx
push %rcx
push %rdx
push %rsi

// Faulty Load
mov $0xa35, %rcx
nop
nop
nop
nop
nop
and $61793, %r11
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'49': 13}
49 49 49 49 49 49 49 49 49 49 49 49 49
*/
