.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xac1f, %r8
nop
dec %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r8)
add $7409, %r8
lea addresses_WC_ht+0x1661f, %r14
nop
xor $7598, %r8
movw $0x6162, (%r14)
and $51559, %rcx
lea addresses_D_ht+0x7def, %rcx
nop
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rcx)
mfence
lea addresses_UC_ht+0xcd1f, %r14
nop
cmp %rax, %rax
movb (%r14), %r13b
nop
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x1c61f, %rsi
lea addresses_UC_ht+0x15eff, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $27, %rcx
rep movsq
nop
inc %rax
lea addresses_UC_ht+0x7c9f, %rcx
nop
nop
nop
nop
nop
add $46581, %r8
mov (%rcx), %ax
nop
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x1b41f, %rsi
lea addresses_D_ht+0x4dbf, %rdi
nop
sub %rax, %rax
mov $121, %rcx
rep movsl
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x9c1f, %rsi
nop
nop
xor $16217, %r8
movl $0x61626364, (%rsi)
nop
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x70e7, %rsi
lea addresses_D_ht+0x12e27, %rdi
nop
nop
nop
xor $9618, %r9
mov $48, %rcx
rep movsq
nop
nop
cmp $6664, %rdi
lea addresses_WT_ht+0xba1f, %rsi
lea addresses_A_ht+0xf01f, %rdi
nop
nop
and %r9, %r9
mov $115, %rcx
rep movsb
nop
nop
and %rax, %rax
lea addresses_WT_ht+0x17e9f, %rcx
nop
nop
nop
nop
and %r8, %r8
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %r13
cmp %rsi, %rsi
lea addresses_WC_ht+0xb11f, %r13
nop
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm0
vmovups %ymm0, (%r13)
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x889f, %rsi
lea addresses_normal_ht+0x1ead7, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $22, %rcx
rep movsw
nop
nop
inc %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x1a7af, %rsi
lea addresses_PSE+0x15c1f, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r15
mov $67, %rcx
rep movsb
nop
nop
dec %rsi

// Store
lea addresses_WC+0x1b3af, %rdi
add %r8, %r8
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
and %rcx, %rcx

// REPMOV
lea addresses_D+0x461f, %rsi
lea addresses_PSE+0xc56f, %rdi
nop
nop
nop
inc %rdx
mov $51, %rcx
rep movsb
nop
nop
add $59227, %rsi

// Store
lea addresses_WC+0xf5df, %r8
nop
nop
nop
nop
nop
add %rsi, %rsi
movb $0x51, (%r8)
nop
nop
nop
xor $33469, %rdi

// Store
lea addresses_UC+0x1d01f, %r10
nop
nop
nop
add $57379, %rsi
movb $0x51, (%r10)
nop
nop
nop
nop
nop
cmp $28233, %rcx

// Store
lea addresses_UC+0x63ec, %rsi
nop
nop
nop
nop
nop
dec %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rsi)
xor %rcx, %rcx

// Faulty Load
lea addresses_A+0x741f, %rdi
nop
nop
xor %r11, %r11
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'00': 1, '35': 21828}
00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
