.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x10ad2, %rsi
lea addresses_UC_ht+0x8796, %rdi
nop
lfence
mov $44, %rcx
rep movsl
nop
nop
add $22443, %rdi
lea addresses_A_ht+0x1926, %rsi
lea addresses_A_ht+0xe3b6, %rdi
nop
nop
nop
sub $24239, %rbp
mov $29, %rcx
rep movsq
sub $19269, %rcx
lea addresses_A_ht+0x13bb6, %rdx
nop
nop
nop
nop
nop
xor $22245, %rax
mov (%rdx), %rcx
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x153b6, %rdi
cmp $46098, %r8
movw $0x6162, (%rdi)
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x1a9da, %r8
add %rdi, %rdi
movups (%r8), %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
xor $19541, %r8
lea addresses_A_ht+0x7db6, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
inc %rax
movb $0x61, (%rcx)
sub $23234, %r8
lea addresses_A_ht+0x53b6, %rax
nop
and $41199, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, (%rax)
nop
sub $40535, %rsi
lea addresses_A_ht+0xc516, %rcx
nop
nop
nop
nop
inc %rdi
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x105b6, %rdi
and $18579, %r8
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
xor $36721, %rdi
lea addresses_D_ht+0x163ee, %rsi
lea addresses_normal_ht+0x97aa, %rdi
nop
nop
xor %r8, %r8
mov $126, %rcx
rep movsl
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_D+0x1a26, %rsi
nop
nop
nop
nop
nop
cmp $38114, %rdx
movl $0x51525354, (%rsi)
nop
dec %r9

// Store
lea addresses_normal+0x151b6, %rdx
add $22900, %r15
movl $0x51525354, (%rdx)
nop
nop
xor $46868, %rdx

// Store
lea addresses_RW+0xe5b6, %rdx
nop
nop
nop
xor $59015, %rbx
mov $0x5152535455565758, %r14
movq %r14, (%rdx)
nop
nop
sub $4907, %r9

// Faulty Load
mov $0x79ef9c00000005b6, %r15
nop
xor %r9, %r9
mov (%r15), %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'00': 465, '58': 17446, '90': 3918}
58 58 58 90 58 90 58 58 58 58 58 90 58 58 58 58 90 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 90 58 90 90 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 90 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 90 58 58 58 58 90 58 58 58 58 00 58 58 58 58 58 90 58 90 58 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 90 58 58 58 58 58 58 58 58 90 58 58 58 58 90 58 00 90 90 58 58 90 58 90 58 90 90 90 58 90 58 58 90 58 58 58 58 58 58 90 58 90 58 90 58 58 58 58 90 58 58 90 90 90 58 58 58 90 90 90 58 58 58 58 58 58 58 58 58 58 90 58 90 58 90 58 58 00 58 90 58 58 90 58 90 58 58 90 90 90 58 90 58 90 90 58 58 58 90 00 90 58 58 58 58 90 58 58 58 90 58 58 90 90 58 58 00 58 90 58 90 90 90 58 90 90 58 58 58 90 90 58 90 58 58 90 58 90 58 58 58 58 90 58 58 58 90 58 90 58 90 58 90 58 90 58 58 90 58 58 58 00 90 90 58 90 90 58 58 58 58 90 90 58 90 90 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 90 58 58 58 58 58 58 58 58 58 58 58 90 58 58 58 58 90 58 58 90 58 58 90 90 58 00 90 58 90 58 58 58 58 58 90 58 58 58 58 58 90 58 90 58 90 58 90 00 90 58 90 58 90 58 58 58 58 90 90 58 58 58 90 58 90 58 58 58 58 58 90 58 58 58 90 58 90 90 58 58 58 58 90 58 90 58 90 58 00 58 58 58 58 90 58 90 58 90 90 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 90 58 58 90 58 58 58 58 58 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 90 58 58 58 58 58 58 58 58 58 58 58 58 58 90 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 90 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 90 58 58 90 58 58 58 58 58 90 58 58 58 58 58 58 58 58 58 58 58 58 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 90 58 58 58 90 58 58 90 58 58 58 58 90 58 58 90 58 58 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 90 58 58 58 90 90 58 58 90 58 00 58 90 58 58 90 58 90 58 58 58 58 90 58 90 58 90 58 90 00 90 58 90 90 90 58 90 58 58 90 90 58 90 58 58 90 58 58 90 58 90 58 90 58 58 58 90 90 90 58 58 58 90 58 90 58 90 58 58 90 58 58 58 90 58 90 58 90 90 90 58 90 58 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00
*/
