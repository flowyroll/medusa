.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x6b12, %rsi
lea addresses_A_ht+0xc392, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $97, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0xb912, %rsi
lea addresses_WT_ht+0xa412, %rdi
nop
add %rax, %rax
mov $102, %rcx
rep movsl
nop
nop
nop
cmp $7596, %rax
lea addresses_normal_ht+0xe112, %r12
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, (%r12)
nop
nop
nop
nop
cmp $32478, %rbx
lea addresses_UC_ht+0x6192, %rax
nop
nop
nop
nop
nop
and %rdx, %rdx
movb (%rax), %bl
nop
cmp $53595, %rdi
lea addresses_WC_ht+0xd532, %rsi
nop
nop
nop
nop
add %rbx, %rbx
mov (%rsi), %cx
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rax
push %rsi

// Store
lea addresses_WC+0x12a82, %rsi
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %r11
movq %r11, (%rsi)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_RW+0xff8a, %r8
clflush (%r8)
nop
nop
nop
nop
inc %rax
movl $0x51525354, (%r8)
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_WT+0x17112, %rsi
add $9629, %r10
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
nop
nop
and $61759, %rsi

// Store
lea addresses_UC+0x29d6, %r8
nop
nop
nop
nop
xor %r11, %r11
movb $0x51, (%r8)
nop
nop
nop
add %r10, %r10

// Load
lea addresses_A+0x12, %r11
nop
dec %r9
mov (%r11), %r15w
nop
dec %r8

// Faulty Load
lea addresses_RW+0x15312, %r8
nop
nop
nop
nop
nop
xor $10051, %r15
mov (%r8), %r9d
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'32': 1}
32
*/
