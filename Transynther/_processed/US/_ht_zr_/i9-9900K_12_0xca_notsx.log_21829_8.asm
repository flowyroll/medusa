.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x23be, %r10
mfence
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
dec %r12
lea addresses_normal_ht+0xe48e, %r14
nop
xor %r15, %r15
mov $0x6162636465666768, %r10
movq %r10, (%r14)
nop
nop
nop
nop
and $63264, %r10
lea addresses_WT_ht+0x13365, %r15
and %rcx, %rcx
movups (%r15), %xmm6
vpextrq $0, %xmm6, %r14
add $2108, %r15
lea addresses_normal_ht+0x163e, %rsi
lea addresses_D_ht+0x74be, %rdi
nop
cmp %r12, %r12
mov $121, %rcx
rep movsw
nop
nop
and %r10, %r10
lea addresses_WT_ht+0x10f02, %r10
nop
inc %rsi
mov (%r10), %r15d
nop
nop
nop
inc %r10
lea addresses_normal_ht+0x1a8ae, %rsi
lea addresses_D_ht+0x1b23e, %rdi
nop
nop
add %r15, %r15
mov $83, %rcx
rep movsq
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x1c65e, %rcx
sub $24693, %r12
movb $0x61, (%rcx)
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x75b2, %rsi
lea addresses_normal_ht+0x1133e, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r12
mov $14, %rcx
rep movsw
nop
xor $17973, %r14
lea addresses_A_ht+0x170fe, %r14
nop
add $25802, %rsi
mov (%r14), %ecx
cmp $48676, %rbp
lea addresses_A_ht+0x623e, %rsi
lea addresses_WT_ht+0x185be, %rdi
clflush (%rsi)
nop
nop
nop
sub $42308, %r14
mov $116, %rcx
rep movsb
nop
cmp %r12, %r12
lea addresses_WT_ht+0x13e3e, %rsi
lea addresses_A_ht+0xdfbe, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp $21398, %r14
mov $97, %rcx
rep movsb
nop
nop
cmp $62175, %rcx
lea addresses_WC_ht+0x177ae, %rcx
clflush (%rcx)
nop
cmp %r10, %r10
movl $0x61626364, (%rcx)
nop
nop
nop
nop
sub %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1a036, %r11
xor %r10, %r10
movb $0x51, (%r11)
nop
nop
nop
nop
cmp $40248, %r15

// REPMOV
lea addresses_US+0x623e, %rsi
lea addresses_RW+0x1e27a, %rdi
clflush (%rsi)
nop
nop
nop
cmp $10322, %r11
mov $55, %rcx
rep movsb
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_US+0x1a3e, %r15
clflush (%r15)
nop
and $37726, %r8
movups (%r15), %xmm1
vpextrq $1, %xmm1, %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_US'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_RW'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'49': 13, '00': 18491, '45': 3168, '44': 157}
44 00 45 00 00 00 45 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 45 00 00 00 00 45 00 45 45 45 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 44 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 45 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 45 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 45 45 00 45 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 45 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 45 00 00 45 45 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 45 45 00 45 45 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 45 00 45 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 45 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00
*/
