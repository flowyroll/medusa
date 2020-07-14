.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x5a3a, %rsi
lea addresses_normal_ht+0x24da, %rdi
nop
and %rax, %rax
mov $43, %rcx
rep movsb
nop
nop
nop
mfence
lea addresses_normal_ht+0x2dba, %rbx
nop
nop
nop
sub %r9, %r9
movups (%rbx), %xmm4
vpextrq $0, %xmm4, %rbp
xor $56964, %rbp
lea addresses_normal_ht+0x1c0a, %rsi
lea addresses_normal_ht+0x1b1ce, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $16, %rcx
rep movsb
nop
nop
dec %rbx
lea addresses_WC_ht+0x69ba, %rsi
lea addresses_UC_ht+0x1615a, %rdi
nop
nop
nop
cmp $37591, %rax
mov $123, %rcx
rep movsq
nop
nop
nop
cmp $58367, %rdx
lea addresses_normal_ht+0x197b8, %rsi
lea addresses_WT_ht+0x1b2fa, %rdi
nop
nop
nop
add $46352, %r9
mov $11, %rcx
rep movsl
sub $49163, %rbx
lea addresses_WC_ht+0x3632, %rbx
clflush (%rbx)
nop
nop
nop
cmp $28715, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rbx)
sub $40324, %rdx
lea addresses_WT_ht+0xafba, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%rdi), %r9
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0x77fa, %rcx
xor $6495, %rbx
movb $0x61, (%rcx)
nop
nop
nop
cmp $34573, %rax
lea addresses_normal_ht+0x15ba, %rsi
lea addresses_WT_ht+0xfdba, %rdi
clflush (%rdi)
nop
nop
nop
xor %r9, %r9
mov $106, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x1063a, %rdx
nop
nop
nop
nop
nop
add $25806, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0xf7aa, %rdi
nop
nop
nop
nop
and %rdx, %rdx
movw $0x5152, (%rdi)
nop
inc %rdx

// Store
lea addresses_normal+0xef9a, %r9
nop
nop
nop
nop
nop
xor $53730, %rbx
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
and $5218, %rax

// Faulty Load
lea addresses_US+0xc1ba, %rbx
nop
nop
cmp $27092, %rdx
mov (%rbx), %r12
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'00': 18}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
