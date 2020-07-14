.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x9b7e, %rax
add %r8, %r8
movups (%rax), %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
nop
nop
sub $20311, %r9
lea addresses_UC_ht+0x126de, %rsi
lea addresses_normal_ht+0x1df9e, %rdi
nop
and $32795, %r12
mov $104, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x477e, %rax
nop
nop
nop
nop
nop
cmp $47724, %r12
movups (%rax), %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x997e, %rsi
lea addresses_A_ht+0x77fe, %rdi
inc %r8
mov $1, %rcx
rep movsb
nop
sub %r12, %r12
lea addresses_D_ht+0x491e, %r12
nop
nop
nop
nop
sub %r9, %r9
mov (%r12), %ax
sub $11660, %rdi
lea addresses_WT_ht+0x1557e, %rbx
nop
nop
nop
nop
nop
and $28165, %rdi
mov $0x6162636465666768, %r8
movq %r8, (%rbx)
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x16d7e, %rdi
nop
add $6382, %rbx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rcx

// Store
lea addresses_D+0xc77e, %r12
nop
nop
and $14478, %r13
movl $0x51525354, (%r12)
nop
nop
sub %r13, %r13

// Load
mov $0x15bc9f0000000f7e, %r13
nop
add $3787, %r11
mov (%r13), %r9
nop
nop
nop
nop
nop
sub $9570, %r13

// Store
lea addresses_UC+0x189c5, %r11
nop
nop
nop
nop
nop
cmp $59264, %r9
movl $0x51525354, (%r11)
nop
dec %r13

// Store
lea addresses_RW+0x887e, %r13
nop
sub $6269, %r11
movw $0x5152, (%r13)
nop
nop
nop
nop
add %r11, %r11

// Load
lea addresses_WC+0x5b7e, %rcx
nop
nop
nop
nop
nop
inc %r12
movb (%rcx), %al
nop
nop
cmp $55096, %rcx

// Faulty Load
lea addresses_US+0x12f7e, %rax
clflush (%rax)
nop
nop
cmp %r11, %r11
movb (%rax), %r13b
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_RW', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 9}, 'OP': 'STOR'}
{'00': 56}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
