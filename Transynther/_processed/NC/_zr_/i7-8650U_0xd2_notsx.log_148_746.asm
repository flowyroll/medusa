.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb440, %rsi
lea addresses_D_ht+0xff08, %rdi
nop
nop
nop
sub %r10, %r10
mov $13, %rcx
rep movsw
nop
nop
nop
nop
nop
and $45094, %r15
lea addresses_WT_ht+0x14d14, %rsi
lea addresses_WT_ht+0x1e236, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r14
mov $94, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $12011, %rcx
lea addresses_WT_ht+0x19940, %r14
nop
xor %rdi, %rdi
movups (%r14), %xmm3
vpextrq $1, %xmm3, %r15
nop
nop
xor $57639, %rcx
lea addresses_WT_ht+0x57a0, %rsi
lea addresses_UC_ht+0xac40, %rdi
nop
sub $17239, %rax
mov $82, %rcx
rep movsb
nop
nop
xor $63138, %rcx
lea addresses_WT_ht+0x1e9f8, %rdi
nop
nop
nop
nop
nop
dec %rcx
movw $0x6162, (%rdi)
inc %rsi
lea addresses_WT_ht+0x1adc8, %rsi
lea addresses_normal_ht+0xe968, %rdi
nop
xor $48275, %r11
mov $68, %rcx
rep movsw
sub $28989, %rsi
lea addresses_normal_ht+0x11440, %rsi
nop
dec %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rsi)
nop
xor %rax, %rax
lea addresses_UC_ht+0xbef0, %r10
nop
nop
nop
nop
and %r15, %r15
movl $0x61626364, (%r10)
nop
nop
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rcx

// Store
lea addresses_UC+0x1b2a0, %r11
clflush (%r11)
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, (%r11)
nop
lfence

// Store
lea addresses_normal+0xe080, %r8
clflush (%r8)
sub %rax, %rax
movl $0x51525354, (%r8)
nop
nop
nop
cmp %r9, %r9

// Faulty Load
mov $0x6f14420000000c40, %r12
nop
nop
nop
sub $36514, %r11
mov (%r12), %ecx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 148}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
