.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1c53, %rsi
lea addresses_WC_ht+0x94f3, %rdi
clflush (%rdi)
sub $30174, %r11
mov $80, %rcx
rep movsb
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x116d3, %r13
clflush (%r13)
nop
nop
nop
nop
nop
xor $9727, %r11
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x1b453, %rsi
lea addresses_UC_ht+0x3dab, %rdi
nop
xor $39118, %rax
mov $110, %rcx
rep movsw
nop
nop
sub $30764, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Store
mov $0xa53, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
add $609, %rbp

// Store
lea addresses_normal+0xe4f6, %rdi
nop
nop
nop
nop
nop
cmp $51712, %r9
mov $0x5152535455565758, %rax
movq %rax, (%rdi)
nop
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_WT+0x16a8b, %rax
nop
cmp $17609, %r11
movb $0x51, (%rax)

// Exception!!!
nop
nop
nop
mov (0), %rdi
nop
nop
nop
nop
and $16819, %r11

// Store
lea addresses_RW+0xcc53, %r11
nop
xor %rdi, %rdi
movw $0x5152, (%r11)
and %rsi, %rsi

// Store
lea addresses_US+0x17053, %rbp
nop
nop
add %r11, %r11
movw $0x5152, (%rbp)
nop
nop
nop
and $23307, %r15

// Faulty Load
lea addresses_RW+0xcc53, %rax
xor %rdi, %rdi
movb (%rax), %r9b
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'52': 223}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
