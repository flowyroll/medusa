.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xfadb, %rsi
lea addresses_normal_ht+0x7daf, %rdi
nop
nop
nop
and $16620, %r15
mov $88, %rcx
rep movsb
nop
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0x14d1f, %rsi
lea addresses_normal_ht+0x1947e, %rdi
nop
nop
sub $28080, %rbp
mov $24, %rcx
rep movsl
sub %rbp, %rbp
lea addresses_WC_ht+0x11f5f, %rbp
sub $64267, %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
nop
inc %rbp
lea addresses_A_ht+0x1e71f, %rsi
lea addresses_D_ht+0x1cd1f, %rdi
nop
nop
nop
nop
dec %r9
mov $81, %rcx
rep movsq
nop
nop
nop
nop
xor $32140, %rbp
lea addresses_WC_ht+0x1d5cd, %rdi
nop
sub %rsi, %rsi
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xb51f, %rsi
lea addresses_WT_ht+0x1a31f, %rdi
nop
dec %rbp
mov $107, %rcx
rep movsq
nop
nop
nop
add $45679, %rdi
lea addresses_A_ht+0x5bbf, %rsi
lea addresses_UC_ht+0xca54, %rdi
nop
nop
nop
nop
add $40698, %rax
mov $12, %rcx
rep movsw
xor $9146, %rax
lea addresses_UC_ht+0x16e1f, %rsi
lea addresses_WC_ht+0x16d67, %rdi
clflush (%rsi)
nop
cmp $51158, %r9
mov $3, %rcx
rep movsb
cmp $43706, %r15
lea addresses_D_ht+0x64df, %rsi
lea addresses_normal_ht+0x16f1f, %rdi
nop
xor %rax, %rax
mov $71, %rcx
rep movsw
and $52904, %rsi
lea addresses_UC_ht+0x120df, %rsi
lea addresses_WT_ht+0x9f1f, %rdi
nop
nop
nop
nop
inc %r9
mov $38, %rcx
rep movsq
nop
nop
xor $28020, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi

// Store
lea addresses_PSE+0x479f, %r8
nop
nop
nop
and $41307, %r14
movl $0x51525354, (%r8)
add $10808, %rdi

// Store
lea addresses_WC+0x1b435, %r14
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r14)
nop
nop
and $19694, %r8

// Load
lea addresses_D+0x10757, %rbp
nop
dec %r10
mov (%rbp), %r9
sub %rcx, %rcx

// Store
lea addresses_WT+0x1e51f, %rdi
nop
add %rcx, %rcx
movb $0x51, (%rdi)
nop
inc %r9

// Faulty Load
lea addresses_UC+0xd71f, %rdi
add $48352, %r9
vmovaps (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'45': 110, '48': 420, '46': 1895, '44': 12632, '00': 6772}
00 44 44 00 44 00 46 44 44 00 44 00 44 00 44 44 00 44 00 44 00 44 44 00 44 46 44 44 00 44 44 00 00 44 00 44 44 00 44 00 44 44 46 44 44 00 44 00 44 00 44 00 44 00 44 44 00 44 44 00 44 00 44 48 00 44 00 44 44 46 44 44 00 00 46 44 44 00 44 44 00 44 44 48 00 44 46 44 44 00 44 44 46 44 44 00 44 44 00 44 44 00 44 46 44 44 00 44 00 44 00 44 44 00 44 00 44 00 44 44 00 44 00 44 00 46 44 44 44 44 44 44 00 44 44 00 44 45 00 44 00 44 00 00 44 44 00 44 44 44 44 00 44 00 44 00 44 44 44 00 44 44 44 44 46 44 44 46 44 00 44 44 44 44 44 00 44 48 00 44 48 00 44 44 44 46 44 44 46 44 44 00 44 44 44 44 00 44 00 44 44 00 44 44 00 44 00 44 44 00 46 44 44 00 44 44 46 44 44 00 46 44 44 00 44 46 44 00 44 00 46 44 00 00 44 46 44 44 00 44 46 44 00 44 00 46 44 00 00 44 00 44 44 00 46 44 44 44 00 44 44 00 44 46 44 44 00 44 44 00 44 44 46 44 44 44 00 44 44 00 44 46 44 44 46 44 48 44 44 00 44 44 00 44 00 44 00 44 44 00 44 44 48 00 44 44 44 46 44 44 00 46 44 44 46 44 44 00 46 44 44 46 44 44 00 00 44 44 46 44 44 46 44 00 00 44 00 00 44 00 44 00 00 44 44 00 46 44 44 46 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 45 00 44 46 44 00 44 44 46 44 00 00 44 44 00 44 44 00 44 44 00 44 00 44 44 00 44 46 44 44 00 44 44 00 44 44 00 44 00 44 48 46 44 00 44 44 00 44 00 00 00 44 44 44 44 00 44 46 44 46 44 44 00 44 44 00 46 44 46 44 44 46 44 00 44 44 46 44 00 00 44 00 44 44 00 44 44 00 44 00 44 44 46 44 00 44 44 00 46 44 44 44 44 00 44 00 44 00 44 46 44 44 00 44 44 00 44 44 46 44 44 00 44 00 44 00 44 00 44 44 44 00 44 44 00 44 44 00 00 44 00 44 00 44 00 44 44 00 44 44 48 00 44 00 44 44 44 44 00 44 44 00 44 44 00 44 44 44 00 44 44 44 44 46 44 44 00 44 46 44 00 00 46 44 44 44 00 44 46 44 44 00 46 44 44 00 44 44 00 00 44 00 44 46 44 00 00 44 00 44 44 00 44 00 44 00 00 44 00 00 44 00 44 00 44 00 44 44 00 44 44 44 46 44 44 00 44 00 44 00 44 44 00 44 44 00 44 46 44 44 00 44 00 00 44 00 44 44 44 00 44 44 00 44 44 00 44 00 44 44 44 46 44 00 46 44 44 00 44 46 44 00 44 00 44 44 00 44 44 00 44 00 44 46 44 00 44 45 44 44 00 44 46 44 44 46 44 44 44 44 00 44 44 44 00 44 44 00 44 00 44 44 48 00 44 00 44 44 46 44 44 46 44 44 00 44 44 44 46 44 44 00 44 44 44 44 00 44 44 00 44 44 00 44 44 44 00 44 44 00 44 44 00 46 44 44 00 44 46 44 44 00 44 00 00 44 00 44 00 44 44 00 44 44 00 44 00 44 00 00 44 00 44 44 00 44 00 44 00 46 44 44 00 44 00 44 44 00 44 00 44 00 46 44 44 00 44 00 44 44 44 00 44 44 46 44 44 44 00 44 44 46 44 00 00 44 44 44 00 44 44 00 44 44 00 44 44 00 44 46 44 44 00 44 00 44 00 00 44 00 44 44 00 00 44 44 00 44 44 00 46 44 44 00 44 44 00 44 00 44 44 00 44 44 00 44 00 44 00 44 44 00 46 48 44 44 44 00 44 44 48 00 44 00 44 00 44 44 00 44 44 00 44 00 44 44 00 44 00 44 00 44 00 44 44 00 44 00 44 00 44 44 00 44 00 44 44 00 44 46 44 00 00 44 00 44 00 44 44 00 44 46 44 44 00 46 44 44 00 44 44 44 44 00 44 00 44 44 00 44 44 00 44 44 00 44 44 00 44 00 44 44 00 00 44 00 00 44 00 44 46 44 44 00 44 00 44 44 00 44 46 44 48 00 46 44 44 00 44 44 00 44 00 44 00 44 00 44 00 44 44 00 44 44 44 00 44 44 00 44 00 46 44 44 44
*/
