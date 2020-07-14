.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1d07f, %r15
nop
nop
xor %rax, %rax
mov (%r15), %r13d
nop
nop
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0x27f, %rsi
lea addresses_WT_ht+0xee7f, %rdi
nop
nop
nop
nop
nop
add $12810, %rbx
mov $42, %rcx
rep movsl
nop
xor $15977, %rbx
lea addresses_WC_ht+0xce7f, %rsi
lea addresses_WT_ht+0xc06f, %rdi
inc %r10
mov $125, %rcx
rep movsb
dec %rbx
lea addresses_normal_ht+0x275f, %rsi
lea addresses_UC_ht+0xc27f, %rdi
nop
nop
nop
and %rax, %rax
mov $32, %rcx
rep movsw
nop
nop
nop
nop
dec %r13
lea addresses_UC_ht+0x87ff, %rsi
lea addresses_WT_ht+0x252f, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $122, %rcx
rep movsl
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0xadb9, %rsi
lea addresses_WC_ht+0x16c7f, %rdi
cmp $45790, %rax
mov $77, %rcx
rep movsb
nop
nop
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x1391b, %rsi
lea addresses_WT_ht+0x557f, %rdi
clflush (%rsi)
sub $9276, %r15
mov $13, %rcx
rep movsl
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0xddff, %rsi
lea addresses_UC_ht+0xea7f, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $69, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $3387, %rcx
lea addresses_A_ht+0x487f, %r15
clflush (%r15)
nop
nop
and $31428, %rcx
movups (%r15), %xmm1
vpextrq $0, %xmm1, %rsi
inc %rax
lea addresses_WC_ht+0x9e7f, %rbx
nop
nop
nop
nop
nop
add %rax, %rax
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0x1ea7f, %rdi
nop
nop
nop
nop
nop
add $6450, %rax
mov (%rdi), %ebx
nop
nop
and $55095, %rdi
lea addresses_normal_ht+0xfecf, %rsi
lea addresses_normal_ht+0x1da7f, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $36, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $10589, %r10
lea addresses_UC_ht+0x18053, %rdi
nop
nop
nop
nop
sub $23540, %rsi
movw $0x6162, (%rdi)
xor %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rdx
push %rsi

// Store
lea addresses_D+0x1c3f, %r9
clflush (%r9)
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r9)
inc %rsi

// Store
mov $0x905, %r15
clflush (%r15)
nop
nop
nop
nop
cmp %r14, %r14
movw $0x5152, (%r15)
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_WT+0x1687f, %r15
nop
nop
nop
nop
dec %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r15)
nop
sub $22224, %rdx

// Store
lea addresses_normal+0x3a7f, %r14
nop
nop
nop
nop
nop
xor %r15, %r15
movb $0x51, (%r14)
nop
nop
nop
cmp $28908, %r9

// Faulty Load
lea addresses_A+0x827f, %r13
nop
nop
nop
nop
add %r14, %r14
mov (%r13), %r10d
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rsi
pop %rdx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 3908, 'ff': 307, '48': 30, '49': 3, '44': 1, '45': 2, '47': 1, '04': 1}
00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 ff 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 48 00 00 00 ff 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 48 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 ff 00 ff 00 00 00 00 ff 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 48 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 ff 00 00 ff 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 ff 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 ff 00 00 00 ff ff 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 44 00 ff 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 ff 00 00 00 00 00 00 ff 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 ff 00 00 00 00
*/
