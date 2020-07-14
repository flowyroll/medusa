.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1e22b, %r12
nop
dec %rsi
movl $0x61626364, (%r12)
nop
nop
nop
add $24486, %r11
lea addresses_WC_ht+0x13a2b, %r14
cmp %rbx, %rbx
movb (%r14), %r12b
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x1ebfb, %r14
nop
nop
nop
nop
xor %rsi, %rsi
movups (%r14), %xmm3
vpextrq $1, %xmm3, %rbp
nop
add $14610, %rbx
lea addresses_A_ht+0x1bf4f, %rsi
lea addresses_A_ht+0x1a9eb, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $66, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x1122b, %rsi
lea addresses_normal_ht+0xec2b, %rdi
cmp $39269, %rbp
mov $38, %rcx
rep movsl
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x1125, %rcx
nop
cmp $32799, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
add $27984, %r11
lea addresses_WT_ht+0xd2b, %rsi
lea addresses_UC_ht+0x16a2b, %rdi
and %rbx, %rbx
mov $109, %rcx
rep movsq
nop
inc %rbx
lea addresses_A_ht+0x124b9, %r14
nop
cmp %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r14)
add %rbp, %rbp
lea addresses_WT_ht+0x1262b, %rbp
nop
nop
nop
add $38294, %r11
mov (%rbp), %rsi
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x922b, %rsi
lea addresses_WC_ht+0x173ed, %rdi
nop
xor $20734, %r11
mov $16, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x842b, %rsi
lea addresses_WT_ht+0x129d2, %rdi
clflush (%rdi)
nop
nop
inc %rbp
mov $3, %rcx
rep movsl
nop
dec %r14
lea addresses_A_ht+0x1ce2b, %rsi
lea addresses_WC_ht+0x131bb, %rdi
clflush (%rdi)
nop
nop
nop
sub %r11, %r11
mov $25, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WT_ht+0x19a2b, %rbp
nop
add %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
nop
xor $755, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rdi
push %rdx

// Store
lea addresses_PSE+0x141db, %rdx
cmp %r10, %r10
movl $0x51525354, (%rdx)
nop
add $46618, %rdx

// Store
lea addresses_WT+0xc3ab, %r10
nop
nop
nop
add %rdi, %rdi
movw $0x5152, (%r10)
nop
nop
cmp $28774, %r10

// Store
lea addresses_A+0x12a2b, %r11
clflush (%r11)
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)
nop
nop
xor $31386, %r11

// Store
lea addresses_UC+0x1fc2b, %r11
nop
nop
and %r13, %r13
movl $0x51525354, (%r11)
inc %r12

// Faulty Load
lea addresses_A+0x12a2b, %r13
nop
nop
nop
nop
nop
inc %r10
mov (%r13), %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 8, 'size': 8, 'same': True, 'NT': False}}
{'58': 557}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
