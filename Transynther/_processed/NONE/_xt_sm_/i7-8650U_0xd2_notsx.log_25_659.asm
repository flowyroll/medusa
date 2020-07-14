.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xc305, %r9
nop
nop
sub %r12, %r12
movb $0x61, (%r9)
nop
nop
nop
nop
sub $54516, %r14
lea addresses_normal_ht+0x13705, %rbx
nop
nop
nop
nop
nop
xor $5364, %r10
mov (%rbx), %edi
nop
nop
nop
nop
nop
and $57620, %rdi
lea addresses_D_ht+0x17c5, %r10
cmp %r12, %r12
mov $0x6162636465666768, %rax
movq %rax, (%r10)
sub %r12, %r12
lea addresses_D_ht+0x19f05, %rax
nop
nop
nop
sub %rdi, %rdi
movb (%rax), %r9b
nop
nop
cmp $20491, %r12
lea addresses_normal_ht+0xb305, %r10
nop
nop
nop
add $18888, %rbx
movb $0x61, (%r10)
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x104a9, %rdi
clflush (%rdi)
xor %rax, %rax
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
and %rbx, %rbx
lea addresses_A_ht+0x18985, %rbx
nop
nop
add %rdi, %rdi
movb $0x61, (%rbx)
and $58722, %r9
lea addresses_normal_ht+0x5171, %rsi
lea addresses_UC_ht+0x3605, %rdi
add %r9, %r9
mov $83, %rcx
rep movsb
nop
nop
add $60194, %rdi
lea addresses_UC_ht+0x1cf05, %r9
nop
nop
nop
nop
nop
and $41634, %rdi
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
nop
nop
nop
cmp $12914, %rcx
lea addresses_WT_ht+0x1931, %r9
clflush (%r9)
inc %rcx
movw $0x6162, (%r9)
nop
nop
nop
cmp $32913, %r10
lea addresses_D_ht+0x14705, %rsi
lea addresses_WT_ht+0x18955, %rdi
nop
nop
nop
nop
nop
xor $43525, %rax
mov $88, %rcx
rep movsl
nop
nop
nop
nop
sub $49326, %rcx
lea addresses_WT_ht+0x179e5, %rsi
lea addresses_WT_ht+0x12985, %rdi
and %r10, %r10
mov $111, %rcx
rep movsb
nop
and %r14, %r14
lea addresses_WT_ht+0x8305, %rsi
lea addresses_UC_ht+0x1241d, %rdi
clflush (%rsi)
nop
nop
sub %rax, %rax
mov $30, %rcx
rep movsq
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x14f05, %rcx
nop
nop
cmp %rsi, %rsi
mov (%rcx), %r12
inc %rbx
lea addresses_WT_ht+0x2ac5, %rsi
nop
nop
nop
dec %r12
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %rbx
sub %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1bc2d, %r11
xor $63697, %r9
movw $0x5152, (%r11)
cmp %r9, %r9

// REPMOV
lea addresses_D+0x469d, %rsi
lea addresses_A+0x1de61, %rdi
nop
inc %r13
mov $39, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_PSE+0x19a85, %r13
inc %rcx
movb $0x51, (%r13)
nop
nop
nop
nop
inc %r9

// Store
lea addresses_PSE+0x14f05, %r9
clflush (%r9)
nop
nop
nop
nop
nop
inc %rdi
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
add $26996, %rcx

// REPMOV
lea addresses_PSE+0x14f05, %rsi
lea addresses_WC+0x1fb05, %rdi
inc %rdx
mov $19, %rcx
rep movsb
and $40825, %rdi

// Faulty Load
lea addresses_PSE+0x14f05, %r13
nop
nop
cmp %r11, %r11
mov (%r13), %r9w
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC', 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'52': 25}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
