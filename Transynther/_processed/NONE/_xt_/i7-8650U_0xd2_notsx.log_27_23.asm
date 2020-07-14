.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x12b17, %r10
nop
nop
sub $26660, %rax
mov (%r10), %r11w
nop
nop
cmp $2888, %r12
lea addresses_WT_ht+0x1163, %r11
nop
nop
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
nop
nop
cmp $47650, %rbx
lea addresses_WC_ht+0x2a07, %r10
nop
nop
xor $59655, %r11
mov (%r10), %r12d
nop
nop
nop
nop
sub %r11, %r11
lea addresses_D_ht+0x3e93, %rcx
nop
nop
nop
cmp $4042, %rsi
mov (%rcx), %r10
lfence
lea addresses_WT_ht+0x6023, %r11
nop
nop
nop
nop
inc %r10
mov (%r11), %rbx
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0xfdab, %rax
nop
nop
nop
nop
nop
add $16318, %r10
mov (%rax), %cx
and %r10, %r10
lea addresses_D_ht+0x1de77, %rsi
lea addresses_D_ht+0x3ae7, %rdi
nop
nop
nop
nop
and %r12, %r12
mov $10, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_D_ht+0x16023, %rcx
nop
nop
nop
nop
nop
and %r11, %r11
mov (%rcx), %rdi
nop
nop
nop
dec %r11
lea addresses_normal_ht+0x1ce23, %rsi
nop
nop
nop
nop
cmp %r12, %r12
mov (%rsi), %r11
nop
nop
add $1286, %rbx
lea addresses_WT_ht+0xb4a3, %r10
clflush (%r10)
nop
nop
nop
nop
add %r12, %r12
mov (%r10), %bx
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0xc823, %r13
clflush (%r13)
nop
inc %r12
mov (%r13), %edi
nop
nop
add $13998, %rdi

// Store
lea addresses_normal+0x9670, %r15
clflush (%r15)
nop
and %r10, %r10
movl $0x51525354, (%r15)
nop
nop
nop
nop
add $21643, %r13

// REPMOV
lea addresses_PSE+0xc823, %rsi
lea addresses_PSE+0xc823, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $4333, %rdx
mov $21, %rcx
rep movsb
cmp $5884, %rbp

// Store
lea addresses_RW+0x19063, %rdx
cmp $49082, %r13
movb $0x51, (%rdx)
nop
cmp $5830, %rsi

// Store
lea addresses_WC+0xe0e3, %rdx
nop
add $19260, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movntdq %xmm3, (%rdx)
nop
nop
nop
sub $35222, %rdx

// Faulty Load
lea addresses_PSE+0xc823, %rsi
nop
nop
nop
nop
nop
cmp $20159, %r13
mov (%rsi), %ebp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'33': 27}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
