.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x17076, %r11
nop
nop
nop
nop
sub %rbp, %rbp
movups (%r11), %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
nop
and $41104, %rdi
lea addresses_D_ht+0x1ae76, %r12
nop
nop
nop
nop
nop
cmp $54353, %rbp
mov $0x6162636465666768, %r13
movq %r13, (%r12)
nop
nop
inc %rbp
lea addresses_normal_ht+0x5011, %rsi
lea addresses_normal_ht+0x7e76, %rdi
nop
nop
nop
xor %rax, %rax
mov $51, %rcx
rep movsb
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xf656, %r13
inc %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r13)
sub %rsi, %rsi
lea addresses_WC_ht+0x13a86, %rcx
nop
nop
sub $42934, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm4
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm4, (%rcx)
nop
nop
nop
nop
nop
and $11492, %rcx
lea addresses_A_ht+0x43e8, %rsi
lea addresses_WC_ht+0xc3e6, %rdi
nop
cmp %r11, %r11
mov $14, %rcx
rep movsb
nop
nop
nop
nop
add $51312, %rax
lea addresses_D_ht+0x17676, %r13
clflush (%r13)
nop
nop
nop
nop
nop
xor %rsi, %rsi
movups (%r13), %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
nop
nop
nop
and $46112, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rdx

// Store
lea addresses_PSE+0x8676, %rbx
nop
nop
nop
sub $54508, %r12
movw $0x5152, (%rbx)
xor %r13, %r13

// Load
lea addresses_RW+0x8506, %r8
nop
nop
nop
nop
nop
sub %r15, %r15
mov (%r8), %r13d
xor %r12, %r12

// Store
lea addresses_D+0x2246, %rdx
nop
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_US+0x62e6, %r14
nop
nop
nop
nop
sub $49362, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovntdq %ymm0, (%r14)
nop
and %r8, %r8

// Faulty Load
lea addresses_PSE+0x8676, %r15
nop
nop
xor %rbx, %rbx
vmovups (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rdx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'52': 488}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
