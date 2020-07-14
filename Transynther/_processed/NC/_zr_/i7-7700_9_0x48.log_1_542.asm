.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x10f4f, %r11
nop
nop
nop
nop
dec %r8
movups (%r11), %xmm5
vpextrq $0, %xmm5, %r15
add %rcx, %rcx
lea addresses_normal_ht+0x1909b, %r9
sub $47141, %r15
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x299b, %r14
nop
and %rax, %rax
movw $0x6162, (%r14)
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x1254f, %rax
clflush (%rax)
add $47713, %r15
mov $0x6162636465666768, %r8
movq %r8, (%rax)
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x90af, %rsi
lea addresses_WC_ht+0x119cf, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $15, %rcx
rep movsb
nop
nop
nop
nop
dec %r15
lea addresses_UC_ht+0x1964f, %r9
nop
nop
nop
xor $43359, %rsi
mov (%r9), %cx
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0xe827, %r13
nop
nop
add %rdi, %rdi
movl $0x51525354, (%r13)
cmp $53218, %rbp

// Store
mov $0x3cde040000000b4f, %r14
nop
sub %rsi, %rsi
movb $0x51, (%r14)
nop
cmp $53914, %r13

// REPMOV
mov $0x3cde040000000b4f, %rsi
lea addresses_D+0x1cd6f, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $1, %rcx
rep movsb
nop
nop
nop
sub %r13, %r13

// Faulty Load
mov $0x3cde040000000b4f, %r8
and %r14, %r14
mov (%r8), %dx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_NC', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'00': 1}
00
*/
