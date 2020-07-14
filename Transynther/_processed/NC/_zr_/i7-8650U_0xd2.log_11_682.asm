.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
lea addresses_WC_ht+0x1d5a6, %r8
nop
nop
sub %rdx, %rdx
movups (%r8), %xmm2
vpextrq $1, %xmm2, %rax
nop
inc %r11
lea addresses_WC_ht+0x12fc6, %r11
nop
nop
add %rcx, %rcx
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x1ef16, %rdi
nop
nop
nop
nop
nop
cmp $23291, %r13
mov (%rdi), %r11w
nop
nop
and $60726, %rdx
lea addresses_normal_ht+0xa226, %rax
nop
nop
nop
nop
dec %rdi
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
xor $41254, %rax
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0x11a05, %r14
nop
inc %rdx
mov (%r14), %r12w
nop
nop
nop
nop
xor $34168, %r12

// Load
lea addresses_D+0xdfa6, %r13
and %r11, %r11
movb (%r13), %dl
nop
nop
cmp %rbx, %rbx

// REPMOV
lea addresses_UC+0x181a6, %rsi
lea addresses_US+0x189a6, %rdi
xor $21868, %rbx
mov $35, %rcx
rep movsb
nop
and $47472, %r11

// Store
lea addresses_normal+0x160f2, %rdi
nop
nop
nop
cmp %rcx, %rcx
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
cmp $1438, %rsi

// Faulty Load
mov $0x70feca00000001a6, %rdi
nop
nop
nop
xor $18020, %r12
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
