.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1d307, %r15
nop
nop
nop
nop
and %r8, %r8
movups (%r15), %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x1a165, %rbp
nop
nop
sub %rax, %rax
mov (%rbp), %r9w
dec %rdx
lea addresses_A_ht+0x7237, %rsi
lea addresses_UC_ht+0x7737, %rdi
xor %rbp, %rbp
mov $83, %rcx
rep movsq
xor %rbp, %rbp
lea addresses_UC_ht+0x18173, %rsi
lea addresses_UC_ht+0xef11, %rdi
clflush (%rsi)
nop
nop
and $25528, %r15
mov $97, %rcx
rep movsq
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0xe4f3, %rcx
nop
nop
nop
nop
cmp %r8, %r8
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0xceb7, %rsi
lea addresses_WT_ht+0x1af37, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $45, %rcx
rep movsw
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x12137, %rsi
lea addresses_WT_ht+0x4963, %rdi
dec %r8
mov $33, %rcx
rep movsw
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x15d37, %r11
nop
nop
nop
nop
add $4467, %rax
movb $0x61, (%r11)
nop
nop
nop
nop
nop
xor $6285, %rbp
lea addresses_WC_ht+0x16937, %rsi
lea addresses_D_ht+0x11617, %rdi
nop
nop
sub $30871, %rdx
mov $104, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r11
lea addresses_UC_ht+0xc25a, %r9
nop
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x1ae4b, %rsi
lea addresses_WT_ht+0x7e47, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $85, %rcx
rep movsb
nop
and %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r9
push %rcx

// Store
lea addresses_PSE+0x8937, %r12
clflush (%r12)
nop
nop
nop
sub %r9, %r9
movb $0x51, (%r12)

// Exception!!!
nop
mov (0), %rcx
nop
nop
nop
nop
nop
add $62347, %rcx

// Store
lea addresses_normal+0x1a717, %r14
sub %r10, %r10
movl $0x51525354, (%r14)
sub %r12, %r12

// Store
lea addresses_normal+0x1f137, %rcx
nop
add %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
nop
nop
and $43896, %rcx

// Store
lea addresses_normal+0x19a99, %r13
nop
nop
sub %r14, %r14
movb $0x51, (%r13)
nop
nop
nop
nop
nop
add %r11, %r11

// Store
lea addresses_PSE+0x1a737, %rcx
dec %r10
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_normal+0x1f137, %r13
nop
nop
xor %r11, %r11
mov (%r13), %cx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'58': 227}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
