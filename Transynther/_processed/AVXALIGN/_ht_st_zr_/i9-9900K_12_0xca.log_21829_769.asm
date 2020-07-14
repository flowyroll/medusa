.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1ac55, %r13
clflush (%r13)
nop
nop
nop
add %r15, %r15
movb $0x61, (%r13)
nop
nop
and %r15, %r15
lea addresses_D_ht+0x14995, %rsi
lea addresses_UC_ht+0x16686, %rdi
nop
nop
nop
and %r8, %r8
mov $52, %rcx
rep movsl
nop
nop
cmp $58279, %rdi
lea addresses_normal_ht+0x104f9, %rbp
nop
and $35248, %r8
movl $0x61626364, (%rbp)
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x7185, %rsi
lea addresses_WC_ht+0x34fd, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r15, %r15
mov $41, %rcx
rep movsl
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x122b5, %rsi
lea addresses_D_ht+0x945, %rdi
nop
nop
add $63340, %rax
mov $113, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %rax
push %rdx

// Store
mov $0x26d4a300000006d5, %rdx
nop
dec %r12
mov $0x5152535455565758, %r10
movq %r10, (%rdx)
add %r15, %r15

// Store
mov $0x78f8be00000002d5, %rdx
nop
dec %r11
movb $0x51, (%rdx)
add $57932, %rax

// Faulty Load
mov $0x1a920600000002d5, %r14
nop
nop
nop
and %r11, %r11
mov (%r14), %r15w
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rdx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}}
{'40': 2977, '51': 5333, '00': 13519}
51 00 00 00 40 00 00 51 00 00 00 51 00 00 00 00 00 00 00 51 00 00 40 00 00 00 40 00 00 40 40 00 51 00 00 00 51 00 40 40 40 51 00 00 00 00 00 00 40 00 00 51 00 00 51 00 51 00 00 00 00 00 00 00 00 00 00 00 40 00 51 51 00 00 00 00 51 00 51 00 00 00 00 00 00 00 00 00 00 00 51 00 00 40 40 51 00 00 51 00 00 00 00 00 00 51 00 40 00 00 00 40 40 00 00 00 00 00 00 51 00 51 00 00 00 00 00 00 00 00 40 40 40 00 00 00 00 00 00 51 00 40 00 00 00 00 51 00 00 40 51 40 00 00 00 40 51 00 40 00 51 51 51 40 51 00 00 51 00 51 00 00 00 00 51 40 51 51 00 51 00 00 00 00 00 00 00 00 51 00 00 00 00 40 51 00 00 00 40 51 51 00 51 51 51 51 40 51 51 00 00 00 00 00 51 00 00 00 00 00 00 00 00 51 00 00 51 51 00 40 51 00 00 00 00 00 51 00 00 51 51 00 00 00 40 00 00 40 51 00 51 00 40 00 51 00 00 00 00 00 00 40 51 51 40 40 00 51 00 00 00 00 51 00 40 40 00 00 00 40 51 51 00 00 00 00 51 40 00 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 00 40 00 51 00 51 00 40 51 00 51 51 51 51 00 00 00 00 51 00 51 00 00 00 51 00 40 40 00 40 51 00 00 00 51 00 00 00 00 00 40 00 00 51 00 00 51 00 40 40 00 00 00 40 40 51 40 51 00 00 00 00 00 00 00 51 00 00 00 00 40 51 40 51 00 00 00 00 00 51 00 51 00 00 51 40 00 00 40 40 00 00 00 00 00 00 00 40 00 00 00 40 40 00 40 00 51 40 40 00 00 00 51 51 00 00 51 40 00 00 00 40 00 51 00 51 00 00 40 00 00 00 51 00 00 51 51 00 00 00 00 00 00 00 00 00 51 00 00 00 51 40 00 00 00 51 00 51 00 00 00 00 00 00 00 40 00 00 51 40 40 00 40 00 40 00 51 40 00 00 00 00 00 00 00 51 00 00 00 00 40 00 51 00 00 40 51 51 00 00 40 40 00 00 00 51 51 51 00 40 00 00 00 00 40 00 51 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 40 51 00 51 51 00 40 00 51 51 00 40 00 51 51 51 51 00 00 51 00 00 40 00 40 40 40 00 00 00 51 00 40 40 51 00 00 51 00 00 51 51 00 00 00 51 51 51 51 51 40 00 00 00 00 51 00 00 00 00 51 00 40 51 51 00 51 00 00 00 00 00 00 51 51 00 40 40 00 00 40 00 51 00 51 40 51 00 00 51 00 00 00 00 00 00 00 00 51 00 00 51 00 51 00 00 00 00 00 51 00 00 00 00 51 00 40 00 00 00 00 40 40 00 51 00 40 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 51 40 51 00 51 40 00 00 00 40 00 51 40 40 00 00 00 51 40 00 00 00 51 00 51 51 51 51 51 00 00 00 00 51 00 00 51 00 00 00 00 40 00 51 51 51 51 51 00 00 00 00 51 51 40 00 51 00 00 51 40 51 00 51 00 00 00 00 00 00 51 40 00 00 00 00 00 40 00 51 40 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 00 00 00 40 51 51 00 00 00 00 00 00 40 00 00 51 00 51 51 00 51 00 00 51 00 00 00 00 00 00 00 51 00 51 51 00 00 00 00 40 40 00 00 00 00 00 00 40 51 00 00 51 00 51 00 40 51 51 00 40 00 51 00 51 51 00 00 00 00 00 51 51 00 00 00 51 00 00 00 00 51 00 00 00 51 40 00 00 51 00 00 40 00 51 00 00 51 51 51 00 00 00 00 00 40 00 00 00 51 00 00 00 51 51 40 00 00 00 00 51 00 00 51 00 40 00 40 51 00 00 51 00 00 51 40 51 51 00 40 40 00 51 40 40 00 00 00 00 00 40 00 51 51 00 00 00 00 51 40 40 00 40 00 51 00 00 51 00 00 00 40 40 51 00 00 40 00 00 00 00 00 00 00 00 00 51 00 00 00 40 40 40 00 51 00 00 00 51 51 00 40 00 00 00 40 00 00 40 51 00 51 51 00 40 40 00 00 00 00
*/
