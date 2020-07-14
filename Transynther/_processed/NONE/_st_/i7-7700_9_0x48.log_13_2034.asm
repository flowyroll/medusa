.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1201a, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov (%rdi), %bp
nop
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0x2284, %rax
nop
nop
nop
nop
nop
xor %rbx, %rbx
movl $0x61626364, (%rax)
nop
nop
sub $24624, %rbp
lea addresses_WC_ht+0x1d61a, %rdx
nop
nop
and $24698, %r14
mov $0x6162636465666768, %r10
movq %r10, (%rdx)
xor %rax, %rax
lea addresses_WC_ht+0x43da, %r10
nop
nop
nop
nop
inc %rdi
movw $0x6162, (%r10)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x1a8da, %rsi
lea addresses_WC_ht+0x11bc1, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $43, %rcx
rep movsw
nop
nop
nop
cmp $12832, %rax
lea addresses_WC_ht+0x7f6a, %rax
cmp $38620, %rbp
movups (%rax), %xmm2
vpextrq $1, %xmm2, %rdi
nop
add %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x65da, %rsi
lea addresses_normal+0x1902d, %rdi
and $27143, %r10
mov $113, %rcx
rep movsw
nop
add %r11, %r11

// Load
lea addresses_UC+0x65a, %r10
nop
nop
and $45011, %rdx
and $0xffffffffffffffc0, %r10
vmovntdqa (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
sub $11396, %r8

// Store
lea addresses_WT+0x27da, %r8
nop
nop
nop
nop
nop
sub $49290, %rcx
movw $0x5152, (%r8)
nop
add $10775, %r8

// Load
lea addresses_UC+0x37da, %r11
nop
xor %rsi, %rsi
movb (%r11), %r8b
nop
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_UC+0x177da, %rsi
xor $11705, %rdi
mov (%rsi), %cx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'52': 13}
52 52 52 52 52 52 52 52 52 52 52 52 52
*/
