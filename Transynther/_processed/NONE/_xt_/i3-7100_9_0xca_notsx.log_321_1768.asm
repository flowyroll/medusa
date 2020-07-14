.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x112d5, %r11
clflush (%r11)
nop
nop
nop
nop
dec %r9
mov $0x6162636465666768, %r15
movq %r15, (%r11)
nop
nop
dec %rcx
lea addresses_WC_ht+0x907d, %r13
nop
nop
sub %rsi, %rsi
movl $0x61626364, (%r13)
nop
nop
nop
nop
sub $38455, %r15
lea addresses_WC_ht+0xbfa7, %rsi
lea addresses_normal_ht+0xe91d, %rdi
and $54398, %r13
mov $36, %rcx
rep movsb
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x12b1d, %r9
nop
nop
nop
nop
nop
inc %r11
mov (%r9), %rdi
nop
nop
add $56660, %rcx
lea addresses_D_ht+0x38fd, %r14
nop
nop
xor $14032, %r9
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x7db9, %rsi
lea addresses_A_ht+0x2187, %rdi
clflush (%rdi)
xor %r11, %r11
mov $101, %rcx
rep movsq
nop
nop
nop
add %r13, %r13
lea addresses_D_ht+0x1a39d, %rsi
lea addresses_WC_ht+0xb2dd, %rdi
nop
nop
nop
nop
nop
xor %r11, %r11
mov $99, %rcx
rep movsb
nop
nop
inc %r13
lea addresses_normal_ht+0x13b1d, %r14
nop
nop
nop
cmp $41522, %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
xor %rcx, %rcx
lea addresses_A_ht+0xb11d, %rcx
clflush (%rcx)
add %r9, %r9
mov (%rcx), %r14w
nop
nop
nop
sub $25679, %rsi
lea addresses_UC_ht+0x1c9d, %r13
nop
nop
nop
xor $54285, %r15
movl $0x61626364, (%r13)
nop
nop
nop
nop
sub %r9, %r9
lea addresses_A_ht+0x1469d, %rcx
nop
cmp %r13, %r13
movl $0x61626364, (%rcx)
nop
add $33969, %r9
lea addresses_WT_ht+0x1131d, %rsi
nop
add %r11, %r11
movl $0x61626364, (%rsi)
nop
and $41530, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rdx

// Store
mov $0x59224b0000000a1d, %r14
nop
nop
add $28071, %r15
movw $0x5152, (%r14)
nop
nop
nop
nop
dec %rbx

// Faulty Load
lea addresses_RW+0xa31d, %r14
nop
nop
nop
nop
sub $4526, %rax
mov (%r14), %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rdx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'32': 321}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
