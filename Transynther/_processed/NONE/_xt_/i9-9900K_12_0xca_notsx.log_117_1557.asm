.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x8727, %rsi
lea addresses_A_ht+0x1a213, %rdi
nop
nop
nop
nop
inc %rax
mov $39, %rcx
rep movsb
nop
and %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rcx

// Load
lea addresses_A+0x1b087, %r15
nop
sub %rcx, %rcx
mov (%r15), %eax
nop
nop
nop
nop
nop
and %rax, %rax

// Store
mov $0x5f7244000000023d, %r11
nop
xor $50521, %r12
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
add $16496, %rax

// Load
lea addresses_WT+0x22a7, %rcx
nop
nop
sub $4319, %rbp
mov (%rcx), %rax
nop
nop
nop
nop
nop
sub $45797, %rax

// Faulty Load
lea addresses_normal+0x12b27, %rax
nop
nop
cmp $51834, %rbp
movups (%rax), %xmm0
vpextrq $0, %xmm0, %r15
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'34': 117}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
