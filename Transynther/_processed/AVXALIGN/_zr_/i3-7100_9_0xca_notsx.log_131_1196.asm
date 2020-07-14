.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x5489, %r14
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r9
movq %r9, (%r14)
nop
nop
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0x1a699, %r14
nop
nop
nop
and $3389, %rbx
mov (%r14), %r13
xor $28499, %rbx
lea addresses_A_ht+0xe989, %r11
nop
xor $6486, %rdx
mov $0x6162636465666768, %rax
movq %rax, (%r11)
sub %rbx, %rbx
lea addresses_UC_ht+0x605d, %rsi
lea addresses_WC_ht+0x749c, %rdi
nop
nop
nop
nop
sub %r11, %r11
mov $75, %rcx
rep movsb
nop
nop
dec %rbx
lea addresses_normal_ht+0x16f69, %rdx
nop
cmp %r13, %r13
mov $0x6162636465666768, %rax
movq %rax, (%rdx)
xor $2837, %rcx
lea addresses_A_ht+0x1ab29, %rsi
lea addresses_A_ht+0x2ac1, %rdi
clflush (%rdi)
nop
nop
and %rbx, %rbx
mov $72, %rcx
rep movsl
nop
and $62981, %rsi
lea addresses_D_ht+0x6869, %r13
clflush (%r13)
nop
nop
nop
add %rsi, %rsi
movb $0x61, (%r13)
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x5769, %r11
sub $51860, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
cmp $1198, %r14
lea addresses_WC_ht+0x3bc5, %rsi
lea addresses_normal_ht+0x1ad1d, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %rdx, %rdx
mov $43, %rcx
rep movsb
nop
sub $15770, %r11
lea addresses_WT_ht+0xa839, %rsi
lea addresses_normal_ht+0x18f69, %rdi
nop
sub %r14, %r14
mov $59, %rcx
rep movsq
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x1afe9, %rsi
lea addresses_D_ht+0x1b519, %rdi
nop
nop
nop
nop
nop
and $40538, %rdx
mov $52, %rcx
rep movsq
sub %rcx, %rcx
lea addresses_normal_ht+0x9169, %r13
nop
nop
and $60977, %rcx
movb $0x61, (%r13)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rdi

// Faulty Load
lea addresses_US+0x1c769, %rax
nop
add %r15, %r15
mov (%rax), %r13d
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rdi
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True}}
{'src': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'00': 131}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
