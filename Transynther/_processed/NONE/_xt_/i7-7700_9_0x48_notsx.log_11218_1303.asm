.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x10526, %rsi
lea addresses_WC_ht+0x12d8a, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $29344, %rax
mov $23, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r13
lea addresses_WC_ht+0xf95a, %rsi
lea addresses_normal_ht+0x16b44, %rdi
clflush (%rsi)
nop
add %r8, %r8
mov $77, %rcx
rep movsl
nop
nop
nop
nop
nop
and $39632, %rdi
lea addresses_normal_ht+0x395a, %rcx
nop
and %r9, %r9
movl $0x61626364, (%rcx)
nop
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0xe6e4, %rdi
and $3896, %rsi
mov (%rdi), %r13
cmp $24453, %r13
lea addresses_normal_ht+0x1415a, %rax
nop
nop
inc %rsi
mov (%rax), %rcx
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0x271a, %rsi
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
nop
nop
nop
and $52671, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0x615a, %rsi
lea addresses_normal+0x239a, %rdi
nop
nop
nop
xor %r13, %r13
mov $43, %rcx
rep movsq
nop
nop
cmp $37787, %rcx

// REPMOV
lea addresses_D+0x1ba9a, %rsi
lea addresses_UC+0x11dc, %rdi
clflush (%rsi)
nop
nop
nop
dec %r9
mov $75, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rcx, %rcx

// REPMOV
lea addresses_D+0x1b55a, %rsi
lea addresses_PSE+0xc35a, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $36063, %r9
mov $110, %rcx
rep movsl
and %r13, %r13

// REPMOV
lea addresses_PSE+0x17faf, %rsi
lea addresses_UC+0x1898a, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $52, %rcx
rep movsw
nop
nop
nop
sub $33873, %r13

// Load
lea addresses_US+0x164ba, %rcx
nop
nop
nop
cmp %r15, %r15
mov (%rcx), %r11
nop
nop
xor $24222, %r15

// Load
lea addresses_PSE+0x115a, %r13
nop
nop
nop
nop
nop
cmp $20432, %rsi
mov (%r13), %di
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_A+0x595a, %r13
nop
sub $19346, %rdx
movl $0x51525354, (%r13)
nop
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_PSE+0x615a, %r13
dec %r11
movb (%r13), %dl
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_PSE'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 11}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 4, 'type': 'addresses_A', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'33': 11218}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
