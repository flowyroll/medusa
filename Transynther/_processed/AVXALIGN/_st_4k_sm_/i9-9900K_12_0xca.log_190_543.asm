.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x14cdb, %rsi
lea addresses_A_ht+0xaa07, %rdi
nop
nop
sub %r12, %r12
mov $39, %rcx
rep movsb
nop
xor %rbx, %rbx
lea addresses_A_ht+0x6bc7, %r11
and %r14, %r14
movw $0x6162, (%r11)
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0xeb37, %r14
nop
nop
xor $16830, %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm5
and $0xffffffffffffffc0, %r14
movaps %xmm5, (%r14)
nop
nop
nop
nop
dec %rbx
lea addresses_D_ht+0x7a07, %r12
clflush (%r12)
nop
dec %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %r12
movntdq %xmm5, (%r12)
inc %r14
lea addresses_WC_ht+0x10e27, %rsi
lea addresses_WC_ht+0x99f3, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $12, %rcx
rep movsw
nop
nop
nop
and %rax, %rax
lea addresses_A_ht+0x64bb, %rdi
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x12a07, %rsi
lea addresses_normal_ht+0x14807, %rdi
cmp %r12, %r12
mov $53, %rcx
rep movsb
and $15986, %rbx
lea addresses_WC_ht+0x17a07, %rsi
lea addresses_WT_ht+0x7607, %rdi
nop
nop
nop
and $491, %rbx
mov $36, %rcx
rep movsb
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xd367, %r14
nop
nop
nop
add %rax, %rax
mov (%r14), %r11d
nop
nop
nop
nop
cmp $17937, %r14
lea addresses_UC_ht+0x1963, %rbx
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
dec %r12
lea addresses_UC_ht+0x1087, %rsi
lea addresses_A_ht+0x7807, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $71, %rcx
rep movsq
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rsi

// Store
lea addresses_PSE+0x7207, %rax
nop
sub %r14, %r14
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
xor $6813, %r14

// Store
lea addresses_A+0x1af07, %rsi
nop
nop
nop
nop
and $52051, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%rsi)
sub $21350, %r14

// Store
lea addresses_RW+0xaa07, %r10
nop
nop
nop
nop
cmp $23709, %rsi
mov $0x5152535455565758, %r9
movq %r9, (%r10)
nop
nop
cmp %rax, %rax

// Store
lea addresses_US+0x17807, %r9
nop
inc %rsi
movl $0x51525354, (%r9)
nop
xor %r11, %r11

// Load
lea addresses_WT+0xd507, %r10
nop
sub $22042, %r9
mov (%r10), %r14d
nop
nop
sub %rbp, %rbp

// Store
lea addresses_US+0x5666, %rsi
nop
nop
nop
xor $36637, %r10
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
cmp $33084, %rbp

// Store
lea addresses_UC+0x5d7f, %r14
nop
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r10
movq %r10, (%r14)
dec %r9

// Store
mov $0x1a6a1600000004a7, %r14
nop
nop
xor %rbp, %rbp
movl $0x51525354, (%r14)
nop
xor %r10, %r10

// Store
lea addresses_A+0x2c54, %r11
nop
nop
add $39670, %r14
mov $0x5152535455565758, %r10
movq %r10, (%r11)
nop
nop
nop
nop
nop
sub $16992, %rsi

// Faulty Load
lea addresses_RW+0xaa07, %r11
dec %rax
mov (%r11), %r10w
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': True, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}}
{'58': 190}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
