.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13656, %rsi
add $20572, %rbx
movl $0x61626364, (%rsi)
nop
nop
xor $19359, %r14
lea addresses_WC_ht+0x9a56, %rsi
lea addresses_UC_ht+0x186d6, %rdi
xor %r8, %r8
mov $66, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x1a794, %rbx
nop
nop
nop
nop
nop
xor $39734, %r8
movw $0x6162, (%rbx)
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x49a6, %r8
cmp %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
nop
cmp $57229, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rsi

// Load
lea addresses_RW+0xd256, %r10
nop
nop
nop
cmp %rax, %rax
movb (%r10), %r14b
nop
nop
nop
add $11041, %r11

// Load
lea addresses_WT+0x2947, %rbp
nop
nop
nop
and $4826, %rsi
movb (%rbp), %al
dec %rsi

// Faulty Load
lea addresses_US+0x5256, %rax
nop
nop
nop
nop
xor %r10, %r10
mov (%rax), %r8d
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rsi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'00': 38}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
