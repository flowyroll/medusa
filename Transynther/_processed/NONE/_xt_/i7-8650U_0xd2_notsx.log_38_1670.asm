.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1614b, %rdx
nop
nop
inc %r9
mov (%rdx), %r14d
nop
add %r8, %r8
lea addresses_A_ht+0x350e, %rbx
nop
nop
nop
add %rax, %rax
mov (%rbx), %rsi
nop
nop
nop
nop
nop
dec %rbx
lea addresses_A_ht+0xd922, %rsi
lea addresses_A_ht+0x1350e, %rdi
nop
nop
nop
nop
add $8629, %r8
mov $3, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x7070, %rcx
nop
nop
nop
nop
nop
sub $32491, %rax
mov (%rcx), %edi
nop
dec %rax
lea addresses_WC_ht+0x19e4e, %r14
clflush (%r14)
nop
nop
nop
dec %rdx
movl $0x61626364, (%r14)
nop
nop
nop
add $61082, %rbx
lea addresses_D_ht+0x19d4e, %rbx
nop
nop
nop
nop
nop
and %rdx, %rdx
mov (%rbx), %esi
nop
nop
nop
nop
lfence
lea addresses_A_ht+0xb48e, %rbx
nop
nop
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0xe512, %rdx
nop
xor %rax, %rax
movb $0x61, (%rdx)
nop
nop
nop
nop
dec %rax
lea addresses_A_ht+0x14d0e, %rdi
nop
nop
nop
and $52993, %r8
movl $0x61626364, (%rdi)
cmp $23408, %rbx
lea addresses_WC_ht+0x1cd4e, %rdi
nop
nop
nop
nop
nop
dec %r14
movw $0x6162, (%rdi)
nop
cmp %r14, %r14
lea addresses_WT_ht+0x3010, %r14
clflush (%r14)
nop
nop
nop
add $62033, %rsi
movb (%r14), %dl
nop
sub $29965, %rdx
lea addresses_WT_ht+0x6f8e, %rdx
nop
nop
nop
nop
nop
xor $40315, %rax
mov (%rdx), %ebx
nop
add %rcx, %rcx
lea addresses_WC_ht+0x1617e, %rcx
nop
cmp %rdx, %rdx
movb $0x61, (%rcx)
nop
xor %rsi, %rsi
lea addresses_A_ht+0x13f4, %rbx
nop
nop
add $65516, %rdx
mov (%rbx), %ecx
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0xf50a, %rsi
lea addresses_D_ht+0x178c6, %rdi
and $11880, %r9
mov $83, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_D+0x820e, %r12
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r12)
nop
nop
dec %rsi

// Store
mov $0xce, %r9
nop
nop
nop
nop
nop
sub %rbx, %rbx
movw $0x5152, (%r9)
nop
nop
sub $18815, %r12

// Store
lea addresses_PSE+0x16b0e, %rsi
nop
nop
nop
nop
nop
dec %r9
movb $0x51, (%rsi)
nop
add %rsi, %rsi

// Faulty Load
lea addresses_normal+0x1650e, %r13
nop
nop
nop
nop
nop
xor %rsi, %rsi
vmovups (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'34': 38}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
