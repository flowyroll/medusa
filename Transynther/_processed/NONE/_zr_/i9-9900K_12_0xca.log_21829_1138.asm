.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x19dc7, %rbp
nop
nop
nop
nop
nop
sub $52901, %r15
mov (%rbp), %r9
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x15a39, %rdx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rdx)
xor $16780, %r14
lea addresses_D_ht+0x90f7, %rsi
lea addresses_normal_ht+0x190c7, %rdi
nop
nop
sub $11600, %r9
mov $50, %rcx
rep movsw
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xb8f7, %r15
nop
inc %rsi
movb $0x61, (%r15)
sub %r14, %r14
lea addresses_A_ht+0x120c7, %rdi
clflush (%rdi)
nop
nop
nop
inc %r9
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
add $24606, %rbp
lea addresses_WC_ht+0x8147, %rsi
nop
cmp %rbp, %rbp
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x127a7, %rsi
lea addresses_D_ht+0x1d5c7, %rdi
nop
nop
nop
mfence
mov $95, %rcx
rep movsl
nop
sub %rdi, %rdi
lea addresses_D_ht+0x100f7, %rdx
clflush (%rdx)
nop
nop
nop
sub $57859, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rdx)
nop
nop
cmp $3200, %rdx
lea addresses_normal_ht+0x12e31, %rdx
clflush (%rdx)
nop
nop
and $42624, %r14
movw $0x6162, (%rdx)
nop
nop
nop
nop
and $22810, %r15
lea addresses_D_ht+0xfec7, %rdi
nop
cmp $53859, %r9
mov $0x6162636465666768, %rbp
movq %rbp, (%rdi)
nop
cmp $55725, %rdi
lea addresses_D_ht+0x17d47, %rdi
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x4c7, %rsi
nop
nop
xor %rbp, %rbp
movl $0x61626364, (%rsi)
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0xa40b, %rcx
and $12245, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
nop
and $42256, %rcx
lea addresses_WC_ht+0x1c5c7, %rbp
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, (%rbp)
nop
nop
dec %r14
lea addresses_WC_ht+0x91d3, %rdi
nop
nop
dec %r14
movw $0x6162, (%rdi)
nop
nop
and %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rdx

// Store
lea addresses_PSE+0x50c7, %r15
nop
cmp %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r15)

// Exception!!!
nop
nop
nop
mov (0), %r10
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_WT+0x1b4c7, %r9
and %rdx, %rdx
movb (%r9), %r10b
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
