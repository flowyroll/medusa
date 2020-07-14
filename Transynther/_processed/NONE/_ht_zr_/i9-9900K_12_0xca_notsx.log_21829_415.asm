.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xbfdb, %rsi
lea addresses_UC_ht+0x1687b, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $6872, %r12
mov $81, %rcx
rep movsw
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x1ce33, %r9
xor $32529, %r8
mov (%r9), %r15
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x4a7b, %rsi
lea addresses_A_ht+0x36fb, %rdi
nop
nop
nop
nop
dec %rbp
mov $76, %rcx
rep movsb
nop
xor %r8, %r8
lea addresses_WC_ht+0x18bbb, %rdi
nop
nop
nop
and $3478, %rbp
mov (%rdi), %r8w
sub %rbp, %rbp
lea addresses_A_ht+0xe873, %rsi
lea addresses_UC_ht+0x1b07b, %rdi
nop
nop
nop
sub %r8, %r8
mov $97, %rcx
rep movsb
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x1e3cf, %rsi
lea addresses_WC_ht+0x4c3b, %rdi
clflush (%rsi)
nop
nop
nop
sub %r15, %r15
mov $37, %rcx
rep movsw
nop
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x69bb, %rsi
lea addresses_WT_ht+0xfa1b, %rdi
nop
nop
nop
cmp %r12, %r12
mov $22, %rcx
rep movsb
nop
cmp %r9, %r9
lea addresses_normal_ht+0x1807b, %r9
add %rdi, %rdi
movw $0x6162, (%r9)
nop
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0xfdab, %rdi
nop
nop
nop
nop
nop
cmp $14658, %rbp
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
nop
nop
and $51306, %rcx
lea addresses_UC_ht+0x1523b, %rsi
lea addresses_D_ht+0x1e7b, %rdi
clflush (%rsi)
nop
and $15752, %r15
mov $90, %rcx
rep movsb
nop
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_A+0x154ab, %rcx
nop
xor $27921, %r8
mov $0x5152535455565758, %r12
movq %r12, (%rcx)
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
mov $0x87b, %rax
nop
nop
nop
add $32760, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
nop
add $64818, %rcx

// Load
mov $0x4241640000000bfb, %rcx
nop
nop
nop
nop
nop
cmp $64693, %rbx
mov (%rcx), %r12
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_A+0x1b07b, %r13
cmp %rbx, %rbx
movups (%r13), %xmm6
vpextrq $1, %xmm6, %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'00': 9147, '45': 12297, '48': 385}
00 45 45 00 00 45 45 45 00 45 00 00 45 45 00 00 00 00 45 00 45 45 45 45 00 00 00 00 45 00 00 45 00 00 48 45 00 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45 00 45 45 00 45 45 00 45 00 45 45 00 45 45 00 48 45 00 45 00 00 45 45 45 45 45 00 45 00 00 45 00 00 45 00 45 45 00 45 00 00 45 00 00 45 45 45 00 45 00 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 00 45 00 48 45 00 45 45 45 45 45 00 45 45 45 00 45 00 00 00 45 00 45 00 45 45 45 00 45 45 00 00 45 00 45 00 00 45 45 00 45 00 00 00 45 45 45 45 00 45 45 00 45 45 00 45 45 45 45 48 45 45 00 00 45 00 00 45 45 00 45 00 00 45 00 00 45 45 00 00 45 00 45 45 00 45 45 00 48 45 00 00 45 00 45 00 00 45 00 00 45 45 45 45 00 00 45 00 45 45 45 00 45 00 00 00 45 00 45 45 00 45 00 45 45 45 00 45 45 45 45 45 00 00 45 00 45 45 00 45 00 00 45 45 00 45 45 00 45 45 45 45 00 00 00 00 45 00 45 00 45 00 45 00 45 45 45 45 45 45 45 00 45 45 45 00 00 00 45 00 45 00 00 45 00 45 45 00 00 45 45 00 45 45 45 00 00 00 00 00 00 00 00 45 00 45 45 00 45 45 45 45 45 45 00 45 00 45 45 00 45 00 00 00 45 45 45 45 45 00 45 45 45 00 45 00 45 00 45 00 00 00 00 45 00 00 45 00 45 45 00 00 45 45 45 45 45 45 00 45 45 45 45 00 45 00 45 45 00 00 45 00 45 45 45 45 00 00 45 45 45 45 45 45 45 00 45 45 00 45 00 00 45 45 45 45 00 45 45 45 45 00 00 45 00 45 00 00 45 45 00 45 45 00 00 00 00 00 45 00 48 45 45 48 00 00 45 45 00 45 45 00 00 45 45 00 00 45 00 00 00 45 00 45 45 00 45 00 45 45 45 45 00 45 45 45 45 45 00 45 00 45 00 45 45 00 45 00 00 00 45 45 45 45 00 45 45 45 45 00 00 45 45 00 45 00 00 45 00 45 45 00 45 00 00 00 00 45 00 00 45 45 00 45 45 45 45 45 00 00 45 00 00 00 45 00 45 45 00 00 45 45 45 45 45 45 00 00 45 45 00 45 45 00 00 45 00 45 00 45 00 00 45 45 45 00 45 00 45 45 00 45 00 00 45 45 00 45 45 48 45 45 00 45 00 45 45 00 45 45 45 00 45 45 00 45 00 45 45 45 00 45 00 00 45 45 00 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 48 45 45 00 00 00 45 00 45 45 00 45 00 00 00 45 45 00 45 00 00 00 00 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 00 45 00 00 45 45 00 45 45 45 45 45 00 00 00 45 45 00 45 45 45 45 45 00 45 00 00 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 00 45 00 00 45 00 45 00 00 45 45 45 45 45 00 45 00 45 00 00 00 45 00 45 00 45 45 00 48 00 00 45 00 45 00 45 00 45 45 00 45 45 00 45 45 00 45 00 45 00 00 45 45 45 45 00 00 45 00 48 00 00 45 45 00 45 45 00 00 45 00 00 00 45 00 45 45 00 45 45 00 45 00 45 45 00 00 00 45 45 00 45 45 00 45 00 00 45 00 00 45 00 45 00 00 45 45 45 00 00 45 45 00 45 00 00 45 45 45 45 45 00 45 45 00 45 00 45 45 45 45 45 45 00 45 45 00 45 45 45 00 00 45 00 00 00 00 45 00 45 45 45 45 45 45 45 00 00 45 45 45 00 45 00 45 00 45 45 45 00 45 00 45 00 00 45 00 48 45 45 45 45 00 00 48 00 00 45 00 48 00 00 45 45 45 45 00 45 00 45 00 00 45 00 00 00 00 45 00 45 00 00 00 45 45 00 45 00 45 45 00 45 00 00 45 00 45 00 45 00 00 45 45 00 45 00 00 45 00 00 45 45 00 45 00 45 45 45 00 00 45 00 45 45 45 00 45 00 00 45 00 00 45 45 45 45 00 00 00 45 00 00 45 45 45 48 45 00 45 00 00 45 00 00 45 00 00 45
*/
