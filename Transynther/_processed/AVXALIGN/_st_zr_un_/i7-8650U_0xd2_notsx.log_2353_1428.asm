.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rsi
lea addresses_A_ht+0x1678f, %r13
nop
nop
add $923, %r12
mov (%r13), %rcx
nop
nop
and $5521, %rbp
lea addresses_WT_ht+0x176e1, %r12
nop
nop
nop
nop
add %rbp, %rbp
mov (%r12), %r13w
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x13bf5, %rsi
nop
inc %rax
movl $0x61626364, (%rsi)
nop
nop
dec %rcx
lea addresses_normal_ht+0x1a3d5, %rax
nop
sub $55348, %r12
mov (%rax), %ecx
nop
nop
nop
xor $43384, %rsi
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x23f5, %rbp
nop
nop
nop
nop
xor $1821, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
nop
nop
nop
nop
cmp $55898, %rdi

// Store
lea addresses_UC+0x6735, %rdx
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
nop
sub $40661, %rbx

// Store
lea addresses_A+0xcbf5, %rdx
nop
nop
nop
add $24113, %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%rdx)
nop
nop
nop
cmp $7044, %rbp

// REPMOV
lea addresses_D+0x1f3f5, %rsi
lea addresses_WC+0x175, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $32, %rcx
rep movsl
nop
nop
dec %rsi

// Faulty Load
lea addresses_D+0x1d3f5, %rdi
nop
and $12177, %r11
vmovntdqa (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'36': 1053, '00': 1299, '7f': 1}
36 00 00 00 36 00 36 00 00 00 00 00 36 36 00 00 36 00 36 36 36 36 36 36 00 36 36 00 00 36 36 36 00 36 36 00 36 00 00 36 00 00 00 00 00 00 36 36 00 00 00 00 00 36 00 00 36 36 00 36 00 00 36 00 36 36 00 36 36 00 36 00 36 00 00 36 36 36 00 00 36 00 00 36 00 36 36 00 00 00 36 36 00 36 00 00 36 00 00 36 00 00 36 00 36 00 00 36 00 00 00 36 00 00 00 36 00 00 00 36 00 00 36 36 00 36 36 36 00 00 36 00 00 00 00 36 00 00 00 00 00 00 36 00 00 00 36 36 36 36 00 00 36 00 00 00 00 00 00 00 36 36 00 36 00 00 36 00 36 36 36 00 36 36 36 36 36 00 00 36 36 36 00 00 00 36 36 36 00 00 00 36 00 00 00 36 00 00 00 00 00 36 00 36 36 36 00 00 36 36 00 36 00 00 36 36 00 00 00 36 36 00 00 00 00 00 00 00 00 00 36 00 36 00 00 00 00 00 36 36 36 00 00 36 00 36 00 00 36 00 00 36 36 00 36 36 00 36 36 00 00 00 36 00 36 36 36 00 36 36 36 00 36 36 36 36 00 36 36 00 00 36 00 36 36 36 00 00 36 36 00 00 00 00 36 00 00 36 00 00 00 36 00 36 00 36 36 00 00 00 36 00 36 36 36 36 00 36 36 00 36 36 00 36 00 36 00 36 36 00 00 00 00 36 00 36 36 36 00 36 36 36 00 00 00 00 36 00 00 00 00 36 00 00 36 00 00 36 00 00 00 00 00 36 00 00 00 00 00 36 00 36 00 00 36 00 36 36 00 36 00 36 00 00 00 36 00 00 00 36 00 36 36 00 00 36 00 36 00 00 00 36 00 36 36 00 36 00 00 36 00 36 00 36 36 00 36 00 36 36 00 36 36 36 00 00 00 00 00 36 36 36 36 00 00 36 36 00 36 36 36 00 00 36 00 00 00 00 00 00 36 00 36 00 00 00 00 00 00 36 00 36 00 00 36 36 36 36 00 00 36 00 36 36 36 36 36 00 36 00 00 36 36 00 00 36 00 00 00 36 36 00 36 36 36 36 36 00 36 00 00 00 00 00 00 00 36 00 00 00 00 00 36 00 00 00 36 00 36 00 00 36 00 00 00 00 36 00 36 00 00 36 36 00 36 36 36 36 00 36 00 36 00 00 36 36 00 00 00 36 00 36 36 00 36 00 36 36 00 00 36 36 36 00 00 36 00 00 00 36 00 00 00 36 36 00 00 36 00 36 00 00 36 36 36 00 36 00 00 36 36 00 36 36 00 00 36 00 36 00 36 36 00 00 00 36 36 00 00 00 36 36 36 00 00 36 00 00 00 36 36 36 00 36 00 36 00 00 36 00 36 00 00 36 00 00 36 36 36 36 00 00 36 36 00 00 36 36 36 36 00 00 36 00 00 36 36 36 36 36 00 00 36 00 00 00 36 00 00 36 36 36 00 00 36 00 36 00 36 36 36 36 36 00 36 00 36 00 36 00 00 36 00 36 36 00 36 00 36 36 00 00 00 00 36 00 00 00 36 36 00 00 36 36 36 36 00 00 36 36 00 00 36 36 00 36 36 00 36 00 00 36 36 00 36 00 00 00 00 00 36 00 00 00 36 00 36 36 00 36 00 36 00 36 36 36 00 36 36 36 00 00 00 36 00 00 36 36 36 00 00 00 00 36 00 36 00 36 00 00 36 00 36 36 00 36 36 36 00 00 36 36 36 00 00 00 00 36 36 36 00 36 36 00 00 00 00 00 36 36 00 00 36 00 00 00 00 36 36 36 36 36 00 00 00 36 36 36 36 00 36 00 00 36 00 36 36 36 36 36 00 36 36 00 00 00 36 00 00 36 00 00 00 36 00 36 00 36 36 36 36 00 00 36 00 00 36 00 00 36 00 00 00 00 36 00 00 00 36 36 00 36 36 00 36 36 36 00 36 00 00 36 36 36 36 00 36 00 00 00 36 00 36 00 00 36 00 36 36 00 00 00 00 36 36 7f 36 00 36 00 00 00 00 00 00 00 00 36 36 00 00 00 36 36 00 36 00 00 36 36 00 36 36 00 00 36 00 00 00 36 36 00 36 00 36 36 36 00 00 36 36 36 00 36 36 36 36 00 36 36 00 00 00 00 36 36 00 00 00 00 00 36 00 00 36 00 36 36 36 00 36 00 00 36 00 00 36 00 00 00
*/
