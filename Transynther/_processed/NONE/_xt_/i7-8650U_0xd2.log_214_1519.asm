.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x27e3, %rsi
lea addresses_normal_ht+0xdaab, %rdi
clflush (%rsi)
nop
xor $14760, %r11
mov $70, %rcx
rep movsl
dec %rax
lea addresses_WT_ht+0x29b7, %rsi
lea addresses_normal_ht+0x8cd5, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %rax, %rax
mov $50, %rcx
rep movsw
sub %rdi, %rdi
lea addresses_UC_ht+0x16fe3, %rsi
lea addresses_UC_ht+0xdd59, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r14
mov $52, %rcx
rep movsq
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x12da3, %rax
nop
dec %r14
movb (%rax), %cl
nop
nop
sub $1725, %rax
lea addresses_D_ht+0x11d13, %rsi
lea addresses_UC_ht+0x10fe3, %rdi
nop
nop
nop
add %r9, %r9
mov $73, %rcx
rep movsq
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x53a3, %r14
nop
nop
nop
nop
xor $41485, %rcx
movw $0x6162, (%r14)
xor $55397, %rcx
lea addresses_A_ht+0x16983, %r11
cmp %rax, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0x11be3, %rsi
add $23521, %rdi
mov (%rsi), %r11w
nop
nop
nop
nop
dec %r9
lea addresses_WT_ht+0x13b53, %rsi
nop
nop
nop
nop
add $59432, %rdi
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
nop
nop
sub $57717, %rsi
lea addresses_normal_ht+0x1e6e3, %rax
nop
nop
nop
nop
add $38204, %rsi
movb (%rax), %r11b
nop
nop
nop
nop
add %rax, %rax
lea addresses_D_ht+0x1b0d3, %rdi
clflush (%rdi)
nop
and $5720, %r11
movl $0x61626364, (%rdi)
xor $30649, %r9
lea addresses_normal_ht+0x30e3, %rsi
lea addresses_WC_ht+0x189e3, %rdi
nop
nop
sub %r9, %r9
mov $115, %rcx
rep movsq
nop
nop
xor $58472, %r14
lea addresses_normal_ht+0x9e2b, %rax
nop
nop
nop
nop
dec %r11
mov (%rax), %r9d
nop
nop
nop
cmp $31411, %r14
lea addresses_A_ht+0x9fe3, %rdi
nop
inc %r11
mov (%rdi), %r9w
nop
nop
nop
nop
and $33004, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rsi

// Store
lea addresses_UC+0x16e3, %r14
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%r14)
nop
nop
add $61396, %r15

// Store
lea addresses_PSE+0x5a3b, %rax
and $29665, %r8
movb $0x51, (%rax)
nop
nop
nop
inc %rsi

// Store
lea addresses_D+0x189e3, %r9
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r14
movq %r14, (%r9)
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_normal+0x183e3, %r9
nop
nop
nop
nop
sub %r15, %r15
movb (%r9), %r14b
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 9, 'same': False}}
{'34': 214}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
