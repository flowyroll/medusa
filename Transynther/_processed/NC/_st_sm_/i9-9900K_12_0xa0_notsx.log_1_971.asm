.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xe3b1, %rbx
nop
nop
add $29004, %rsi
movb $0x61, (%rbx)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0xf83a, %rsi
lea addresses_WC_ht+0x2a45, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
dec %r11
mov $0, %rcx
rep movsb
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0xd461, %rsi
nop
nop
nop
nop
xor %r9, %r9
mov (%rsi), %di
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x1a785, %rsi
lea addresses_normal_ht+0x17005, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $59, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $3684, %r11
lea addresses_A_ht+0xd405, %rsi
lea addresses_UC_ht+0x17e05, %rdi
nop
nop
xor %r11, %r11
mov $10, %rcx
rep movsq
nop
nop
nop
add $61599, %rdx
lea addresses_WT_ht+0x9d55, %rsi
nop
nop
add $18162, %rdi
movw $0x6162, (%rsi)
nop
nop
add $29029, %r11
lea addresses_UC_ht+0x9425, %rbx
clflush (%rbx)
nop
sub %rsi, %rsi
mov (%rbx), %r9w
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0xb91b, %rdi
cmp $34582, %r9
movb $0x61, (%rdi)
nop
nop
nop
nop
sub $50259, %r11
lea addresses_WT_ht+0x10d0d, %rsi
nop
nop
xor $50135, %rdi
mov (%rsi), %ebx
nop
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x12285, %rsi
lea addresses_A_ht+0xa005, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r11
mov $23, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $24812, %r11
lea addresses_D_ht+0x10ce9, %rsi
nop
nop
xor %r11, %r11
movl $0x61626364, (%rsi)
nop
dec %r11
lea addresses_WC_ht+0x4205, %r11
nop
nop
add %rcx, %rcx
movb $0x61, (%r11)
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x13d05, %rsi
lea addresses_PSE+0x1beed, %rdi
nop
dec %rbx
mov $25, %rcx
rep movsq
nop
nop
inc %rcx

// Store
mov $0x2af0c80000000a05, %r14
nop
dec %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movntdq %xmm5, (%r14)
nop
nop
sub %rdi, %rdi

// Store
mov $0x2af0c80000000a05, %rbx
nop
nop
nop
nop
nop
xor $39958, %rdi
movb $0x51, (%rbx)
nop
nop
nop
xor $41520, %r14

// Store
lea addresses_A+0x1b7f3, %r14
nop
xor %rbx, %rbx
movb $0x51, (%r14)
nop
xor %rcx, %rcx

// Faulty Load
mov $0x2af0c80000000a05, %rsi
nop
cmp %r14, %r14
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'51': 1}
51
*/
