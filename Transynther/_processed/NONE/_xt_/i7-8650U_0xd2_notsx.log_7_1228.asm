.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x33ac, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r11
movq %r11, (%rdx)
nop
dec %r9
lea addresses_WC_ht+0x127fc, %rbx
clflush (%rbx)
nop
nop
add %r14, %r14
mov (%rbx), %r15w
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x7ffc, %rsi
lea addresses_normal_ht+0x1ca1c, %rdi
nop
dec %r14
mov $101, %rcx
rep movsq
nop
add %rcx, %rcx
lea addresses_A_ht+0x9d68, %rdi
nop
nop
nop
sub %rdx, %rdx
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %rsi
and %r15, %r15
lea addresses_WC_ht+0xae7c, %rsi
lea addresses_A_ht+0x186fc, %rdi
nop
and $42218, %r14
mov $85, %rcx
rep movsw
nop
and %rbx, %rbx
lea addresses_WC_ht+0x27fc, %rsi
lea addresses_A_ht+0xb13c, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $17, %rcx
rep movsl
nop
inc %r14
lea addresses_WT_ht+0x9acc, %rcx
nop
nop
nop
nop
cmp %rdx, %rdx
movw $0x6162, (%rcx)
nop
nop
nop
nop
and $30656, %r11
lea addresses_WT_ht+0x187fc, %rdi
nop
nop
nop
and %r9, %r9
mov (%rdi), %r15d
nop
nop
nop
nop
nop
add $60199, %rsi
lea addresses_A_ht+0x15ffc, %rsi
lea addresses_WC_ht+0x10b0c, %rdi
nop
nop
nop
add %r9, %r9
mov $62, %rcx
rep movsw
nop
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x3c7c, %rsi
lea addresses_UC_ht+0x8433, %rdi
clflush (%rdi)
nop
nop
and $55948, %rbx
mov $74, %rcx
rep movsl
nop
nop
nop
nop
and $31538, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0x4b8f340000000a6e, %rsi
mov $0xb6c, %rdi
clflush (%rdi)
add %r8, %r8
mov $49, %rcx
rep movsb
nop
nop
sub $43785, %r14

// Faulty Load
lea addresses_WT+0x127fc, %rsi
sub $16424, %r14
movb (%rsi), %r15b
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_NC', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'39': 7}
39 39 39 39 39 39 39
*/
