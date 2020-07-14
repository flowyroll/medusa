.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1ee97, %r14
nop
nop
nop
nop
and $30345, %r11
movb $0x61, (%r14)
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x8577, %rsi
lea addresses_A_ht+0x1a79b, %rdi
nop
nop
nop
and %rdx, %rdx
mov $44, %rcx
rep movsw
sub %rdi, %rdi
lea addresses_normal_ht+0x167c7, %rdx
clflush (%rdx)
nop
nop
nop
cmp $5928, %rsi
mov (%rdx), %r11d
dec %r11
lea addresses_WC_ht+0x13f17, %rdx
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rdx)
inc %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbx
push %rcx

// Faulty Load
lea addresses_US+0x19c97, %r13
nop
nop
nop
nop
nop
add %r8, %r8
movups (%r13), %xmm4
vpextrq $1, %xmm4, %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 77}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
