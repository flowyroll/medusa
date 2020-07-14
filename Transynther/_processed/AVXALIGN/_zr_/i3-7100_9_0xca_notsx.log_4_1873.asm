.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_UC+0x16ad9, %rbp
nop
cmp %rdx, %rdx
movb (%rbp), %r10b
nop
nop
sub %rdx, %rdx

// REPMOV
lea addresses_D+0xa9b5, %rsi
lea addresses_UC+0x14d15, %rdi
nop
add $41182, %r15
mov $60, %rcx
rep movsl
nop
sub %r15, %r15

// Faulty Load
lea addresses_UC+0x16d15, %rcx
clflush (%rcx)
nop
nop
nop
add %rbp, %rbp
vmovntdqa (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 9, 'same': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 4}
00 00 00 00
*/
