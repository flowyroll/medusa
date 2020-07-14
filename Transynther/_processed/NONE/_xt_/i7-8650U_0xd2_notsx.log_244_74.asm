.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x53eb, %rbx
nop
nop
nop
nop
nop
sub %r10, %r10
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
nop
nop
nop
inc %r10
lea addresses_WC_ht+0x1dca1, %rbx
nop
add $32916, %r9
mov (%rbx), %rax
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0xda59, %rcx
cmp %r11, %r11
movw $0x6162, (%rcx)
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0x1786b, %rcx
nop
nop
and %r11, %r11
movw $0x6162, (%rcx)
nop
nop
inc %r10
lea addresses_A_ht+0x4eeb, %r9
nop
nop
nop
nop
xor $39025, %r15
mov (%r9), %cx
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x1006b, %rsi
lea addresses_normal_ht+0x1c0eb, %rdi
nop
nop
nop
nop
dec %r10
mov $97, %rcx
rep movsl
nop
nop
nop
and %rax, %rax
lea addresses_A_ht+0x1586b, %rax
sub $41536, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm0
and $0xffffffffffffffc0, %rax
movntdq %xmm0, (%rax)
nop
and %rsi, %rsi
lea addresses_normal_ht+0x10a6b, %rdi
and %rsi, %rsi
movb $0x61, (%rdi)
nop
nop
xor $49727, %rcx
lea addresses_WT_ht+0xf46b, %r11
nop
inc %r10
movb (%r11), %al
nop
nop
nop
nop
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbp
push %rdi
push %rdx

// Load
lea addresses_A+0x60eb, %r12
nop
nop
nop
and %r8, %r8
movups (%r12), %xmm6
vpextrq $0, %xmm6, %rbp
nop
dec %r10

// Store
lea addresses_RW+0xe26b, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
nop
xor $61472, %rdx

// Faulty Load
lea addresses_PSE+0x5c6b, %rdx
nop
nop
nop
nop
and %r10, %r10
mov (%rdx), %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'33': 244}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
