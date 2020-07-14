.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x3a9a, %rsi
lea addresses_A_ht+0x11eae, %rdi
nop
nop
dec %rdx
mov $104, %rcx
rep movsb
nop
nop
nop
nop
sub $20912, %r9
lea addresses_normal_ht+0x1955a, %rdx
nop
nop
nop
and %rbp, %rbp
movl $0x61626364, (%rdx)
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x19e3a, %rcx
nop
nop
nop
nop
inc %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
inc %rsi
lea addresses_WT_ht+0xf626, %rdi
nop
nop
nop
inc %rbp
movw $0x6162, (%rdi)
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x7772, %rcx
nop
and $41017, %rdx
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
nop
and %rbp, %rbp
lea addresses_UC_ht+0x1ef3a, %rsi
lea addresses_UC_ht+0x14dba, %rdi
nop
nop
cmp $45474, %r11
mov $108, %rcx
rep movsb
nop
nop
nop
nop
xor $51751, %rcx
lea addresses_A_ht+0x5f3a, %rsi
lea addresses_A_ht+0x32ba, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $70, %rcx
rep movsl
add %rdx, %rdx
lea addresses_WC_ht+0xd2ba, %rdx
nop
xor %r9, %r9
mov (%rdx), %ecx
nop
nop
nop
nop
nop
cmp $57796, %r11
lea addresses_WC_ht+0x1833a, %rsi
lea addresses_A_ht+0x8f6a, %rdi
nop
inc %r14
mov $41, %rcx
rep movsq
nop
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x18f3a, %rbp
nop
add %rdi, %rdi
mov (%rbp), %r9w
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0xedfa, %r14
inc %rcx
movb $0x61, (%r14)
nop
nop
nop
add $37025, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rsi

// Store
lea addresses_UC+0x144ca, %r13
nop
nop
nop
nop
nop
xor %rax, %rax
movl $0x51525354, (%r13)
nop
nop
xor %r13, %r13

// Store
lea addresses_normal+0x18a7a, %rbx
nop
cmp $43181, %r15
movw $0x5152, (%rbx)
cmp %rbx, %rbx

// Store
lea addresses_US+0x433a, %r15
nop
nop
inc %rsi
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
sub $33479, %rsi

// Store
lea addresses_WC+0x4f3a, %rax
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%rax)
nop
nop
nop
nop
sub $19912, %r13

// Faulty Load
lea addresses_WC+0x17f3a, %rax
nop
nop
nop
nop
inc %r13
movups (%rax), %xmm5
vpextrq $1, %xmm5, %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'6c': 1, '45': 13605, '00': 8132, '48': 91}
45 6c 00 45 45 00 45 00 45 00 45 00 45 00 00 00 45 45 00 00 45 45 00 45 45 00 45 00 00 45 45 45 45 45 00 45 45 45 45 45 00 00 45 00 45 45 45 45 00 45 00 45 00 45 00 45 00 45 00 45 45 45 45 00 45 00 45 00 00 45 45 00 45 45 00 00 45 45 45 45 45 00 45 45 45 00 00 45 45 00 45 45 45 00 45 45 45 00 45 00 00 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 00 00 45 00 45 00 45 00 45 45 00 00 00 45 45 45 00 45 00 45 45 45 00 45 45 45 45 00 45 00 45 45 45 45 00 45 45 00 45 45 45 00 45 45 45 00 00 00 00 00 45 45 45 00 00 45 45 45 45 45 00 00 00 00 45 45 45 45 00 45 45 45 00 00 45 00 45 00 45 00 00 45 00 00 00 00 45 45 00 45 45 45 00 00 00 45 45 45 45 45 00 00 00 45 45 45 45 45 45 00 45 45 45 00 45 45 00 45 00 00 45 45 00 45 00 00 45 00 45 00 45 00 00 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 00 45 45 00 45 00 45 45 45 45 45 00 00 45 00 45 00 45 00 45 45 45 00 45 00 48 00 00 45 00 00 45 00 45 00 45 45 45 45 45 45 45 00 45 00 00 00 45 45 00 45 45 45 00 45 00 00 45 45 45 45 45 45 45 45 00 45 00 45 00 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 00 00 45 00 45 00 45 45 00 00 00 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 00 45 00 45 00 45 45 45 45 45 00 45 00 45 00 45 00 00 45 45 45 00 00 45 45 00 45 45 45 45 00 45 00 00 45 45 45 45 00 00 45 00 45 45 00 45 45 00 45 00 00 45 00 00 45 00 45 45 00 00 45 45 45 00 00 45 45 45 00 45 45 45 45 00 45 45 45 00 45 00 45 45 45 00 00 45 00 45 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 00 45 00 45 00 45 00 45 00 45 00 45 00 00 00 45 45 00 00 45 00 45 00 45 45 45 00 45 00 45 48 48 48 00 48 00 00 48 00 00 00 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 00 00 45 00 45 00 00 45 45 00 45 00 00 00 45 45 45 00 45 00 45 00 45 45 00 45 45 00 00 45 45 00 45 45 45 00 45 00 45 00 00 00 00 00 00 00 45 45 00 45 00 45 45 45 45 45 45 00 00 45 45 45 00 45 45 00 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 00 45 00 45 00 45 45 00 00 45 00 00 45 45 00 00 45 45 00 45 45 45 00 45 00 00 45 45 45 00 45 00 45 45 45 00 00 00 45 00 45 00 45 00 45 45 00 45 45 00 45 00 45 45 00 45 00 45 45 00 45 00 45 45 00 45 45 45 45 45 45 00 00 45 45 00 45 45 45 00 00 00 00 45 45 45 00 45 00 00 45 00 45 45 00 45 45 45 00 45 45 00 45 45 00 45 45 45 45 00 00 00 45 45 00 45 45 00 45 45 00 45 45 45 45 00 00 45 00 45 45 00 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 00 45 45 00 00 45 00 00 45 45 45 45 00 45 00 45 45 00 45 00 45 45 00 45 45 45 45 00 45 00 45 45 00 45 45 00 00 00 45 00 45 45 00 00 00 45 45 45 00 45 00 45 45 45 45 00 45 00 45 45 45 45 00 00 45 45 45 00 00 45 00 45 45 00 45 45 45 00 45 00 00 00 45 45 45 45 00 45 45 00 00 45 00 45 45 00 00 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 00 45 45 00 45 00 00 45 00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 00 00 45 45 45 48 48 00 00 00 00 48 48 00 45 45 45 48 45 45 45 45 45 00 45 00 45 00 45 45 00 00 00
*/
