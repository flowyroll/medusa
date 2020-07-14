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
lea addresses_WT_ht+0xc25a, %rbx
nop
nop
nop
nop
xor $38004, %rdi
movl $0x61626364, (%rbx)
nop
nop
sub $64067, %r12
lea addresses_WT_ht+0x3632, %r14
nop
cmp $62820, %rdi
movw $0x6162, (%r14)
nop
nop
sub $35932, %r12
lea addresses_WC_ht+0x1245a, %rsi
lea addresses_D_ht+0x157c8, %rdi
nop
nop
cmp $13217, %rbx
mov $44, %rcx
rep movsq
sub $34153, %rcx
lea addresses_UC_ht+0x12dc3, %rsi
lea addresses_normal_ht+0x1225a, %rdi
clflush (%rsi)
nop
nop
nop
xor %rbx, %rbx
mov $126, %rcx
rep movsl
and %r12, %r12
lea addresses_UC_ht+0x459e, %rbx
nop
nop
dec %rbp
movb $0x61, (%rbx)
inc %r14
lea addresses_UC_ht+0x2796, %r11
nop
nop
nop
nop
nop
sub %rbx, %rbx
movw $0x6162, (%r11)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x1685a, %rsi
lea addresses_WT_ht+0xd15a, %rdi
nop
nop
nop
nop
cmp $49894, %r11
mov $26, %rcx
rep movsl
nop
add %rbx, %rbx
lea addresses_A_ht+0xbb5a, %rsi
lea addresses_WT_ht+0x1045a, %rdi
nop
nop
nop
nop
xor $26419, %r12
mov $55, %rcx
rep movsw
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x77da, %rdi
nop
nop
nop
nop
nop
cmp $41857, %r14
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
xor %r11, %r11
lea addresses_D_ht+0xda5a, %rsi
lea addresses_UC_ht+0x14535, %rdi
nop
and %r12, %r12
mov $95, %rcx
rep movsl
nop
sub $1138, %r14
lea addresses_A_ht+0xd05a, %rsi
lea addresses_WC_ht+0x1119a, %rdi
clflush (%rdi)
nop
add $9572, %rbp
mov $56, %rcx
rep movsl
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x11c6a, %rsi
lea addresses_WC_ht+0x1e78a, %rdi
nop
nop
xor %r12, %r12
mov $69, %rcx
rep movsw
and %rbp, %rbp
lea addresses_WC_ht+0x9815, %rsi
lea addresses_WT_ht+0x1385a, %rdi
inc %r12
mov $87, %rcx
rep movsb
nop
nop
nop
lfence
lea addresses_WT_ht+0x8ff2, %rsi
lea addresses_D_ht+0x500, %rdi
nop
nop
nop
add $65342, %r14
mov $83, %rcx
rep movsb
nop
nop
nop
nop
cmp %rbx, %rbx
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
push %r11
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x1b55a, %rdx
nop
nop
nop
cmp $36572, %r13
movl $0x51525354, (%rdx)
nop
mfence

// Load
lea addresses_RW+0x1723a, %r14
nop
xor %r11, %r11
mov (%r14), %rbx
nop
nop
nop
nop
nop
and $65406, %rdx

// Load
lea addresses_UC+0x1305a, %r11
nop
nop
nop
nop
nop
and $47859, %r13
movups (%r11), %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
nop
nop
nop
inc %r14

// REPMOV
lea addresses_D+0xd4a, %rsi
lea addresses_A+0x765a, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %rax
mov $68, %rcx
rep movsw
nop
nop
nop
and $16502, %rcx

// Store
lea addresses_D+0x4625, %rsi
dec %rax
movw $0x5152, (%rsi)
cmp $52873, %r13

// Store
lea addresses_UC+0x705a, %rcx
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rax
movq %rax, (%rcx)
nop
add $60225, %r12

// Faulty Load
lea addresses_UC+0x705a, %rdx
nop
and %rsi, %rsi
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'58': 113}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
