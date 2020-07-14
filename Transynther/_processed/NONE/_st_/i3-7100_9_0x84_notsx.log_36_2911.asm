.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xda9a, %rsi
lea addresses_WC_ht+0x11f3c, %rdi
nop
sub $1111, %r15
mov $121, %rcx
rep movsl
nop
nop
nop
nop
cmp $11802, %r8
lea addresses_WT_ht+0x140c, %r8
nop
sub %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
cmp $44311, %rsi
lea addresses_A_ht+0xf024, %rsi
nop
nop
nop
and $8956, %r8
mov (%rsi), %r10w
nop
nop
sub $56341, %rcx
lea addresses_A_ht+0x1c8a4, %r8
nop
nop
nop
nop
nop
inc %r13
movb $0x61, (%r8)
nop
cmp $61699, %rsi
lea addresses_A_ht+0xa424, %rsi
lea addresses_WC_ht+0x14504, %rdi
nop
nop
nop
sub %r15, %r15
mov $37, %rcx
rep movsl
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x126a4, %rcx
nop
inc %r8
movb $0x61, (%rcx)
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x5bf4, %rsi
lea addresses_A+0xaa4, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
dec %r10
mov $38, %rcx
rep movsq
nop
nop
nop
sub %rcx, %rcx

// Load
lea addresses_PSE+0x1a4a4, %r15
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movups (%r15), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
and $5648, %rdi

// Load
lea addresses_PSE+0xdb7c, %r11
sub %rsi, %rsi
movaps (%r11), %xmm5
vpextrq $0, %xmm5, %rcx
sub %rdi, %rdi

// Store
lea addresses_WT+0x12ae4, %r15
nop
nop
nop
sub %rcx, %rcx
movb $0x51, (%r15)
nop
nop
nop
nop
add $33106, %r15

// Faulty Load
lea addresses_A+0xaa4, %r15
nop
nop
nop
sub $49017, %rsi
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'36': 36}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
