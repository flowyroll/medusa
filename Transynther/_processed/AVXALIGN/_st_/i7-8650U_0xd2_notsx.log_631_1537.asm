.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x115bb, %rsi
lea addresses_A_ht+0xcf8b, %rdi
nop
add $5888, %r13
mov $24, %rcx
rep movsb
nop
nop
add %r14, %r14
lea addresses_WC_ht+0xaeec, %r11
nop
nop
nop
cmp $53166, %r9
movl $0x61626364, (%r11)
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0x7abb, %r9
nop
and %r11, %r11
movb (%r9), %cl
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x5bbb, %r11
nop
xor %rdi, %rdi
mov (%r11), %r13
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1a3bb, %r11
nop
inc %r9
mov $0x6162636465666768, %r14
movq %r14, (%r11)
nop
and $42824, %r13
lea addresses_WC_ht+0xe23b, %rcx
clflush (%rcx)
nop
nop
nop
add %r9, %r9
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x6dbb, %rsi
lea addresses_A_ht+0x127d3, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $120, %rcx
rep movsl
nop
nop
nop
nop
nop
add $54444, %rcx
lea addresses_normal_ht+0x1dbb, %rsi
clflush (%rsi)
nop
cmp $25629, %r14
movw $0x6162, (%rsi)
nop
nop
cmp $21149, %r13
lea addresses_A_ht+0xfdf7, %rsi
clflush (%rsi)
cmp $49343, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
cmp $11477, %rdi
lea addresses_normal_ht+0x155bb, %r9
nop
nop
lfence
mov (%r9), %ecx
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1396f, %r8
nop
nop
nop
nop
xor $60663, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_PSE+0x1dc7b, %rdx
cmp $43281, %rax
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_normal+0x17e4b, %r12
nop
nop
nop
nop
cmp %rax, %rax
movl $0x51525354, (%r12)
nop
cmp %r12, %r12

// Store
lea addresses_normal+0x7ef0, %rbx
nop
nop
nop
nop
xor $43037, %rax
movw $0x5152, (%rbx)
nop
and %r8, %r8

// REPMOV
lea addresses_WT+0xacbb, %rsi
lea addresses_UC+0x58bb, %rdi
nop
nop
nop
add $49374, %rax
mov $6, %rcx
rep movsq
nop
nop
dec %r9

// Store
lea addresses_RW+0x3203, %r9
nop
nop
dec %r14
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
and $57799, %rax

// Store
lea addresses_A+0x183bb, %r14
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r14)
nop
xor $1285, %r14

// Store
lea addresses_WT+0x9894, %rcx
clflush (%rcx)
nop
add $629, %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
dec %rdi

// Faulty Load
lea addresses_RW+0xddbb, %rax
clflush (%rax)
cmp $32682, %rcx
mov (%rax), %r8w
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'32': 631}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
