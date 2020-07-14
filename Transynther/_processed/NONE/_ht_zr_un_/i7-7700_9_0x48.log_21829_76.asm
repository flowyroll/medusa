.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1e7ca, %rsi
lea addresses_WC_ht+0xcfba, %rdi
nop
nop
nop
xor $56554, %r12
mov $81, %rcx
rep movsl
nop
and $38402, %r10
lea addresses_UC_ht+0x1ddaa, %r12
nop
nop
nop
xor %rax, %rax
movb (%r12), %r10b
nop
nop
nop
nop
nop
add $43660, %r12
lea addresses_D_ht+0x137aa, %rsi
lea addresses_WC_ht+0x1582, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $60, %rcx
rep movsw
nop
nop
cmp $54126, %rcx
lea addresses_UC_ht+0x18e77, %rdi
nop
sub %r10, %r10
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
and $0xffffffffffffffc0, %rdi
vmovaps %ymm2, (%rdi)
nop
nop
nop
add $45676, %rsi
lea addresses_UC_ht+0x9e3a, %r12
nop
nop
inc %rax
movups (%r12), %xmm1
vpextrq $1, %xmm1, %r10
xor %rcx, %rcx
lea addresses_WC_ht+0xe1be, %rsi
lea addresses_UC_ht+0x7daa, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r11, %r11
mov $65, %rcx
rep movsb
nop
nop
nop
dec %r10
lea addresses_WC_ht+0x9c32, %rsi
lea addresses_D_ht+0x17eaa, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $116, %rcx
rep movsb
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x9ba, %rcx
nop
nop
sub %rsi, %rsi
mov (%rcx), %ebp
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x180aa, %rsi
lea addresses_D_ht+0xea74, %rdi
nop
dec %rbp
mov $2, %rcx
rep movsb
cmp $16423, %rcx
lea addresses_UC_ht+0x73ba, %rax
clflush (%rax)
nop
nop
nop
nop
sub $44516, %rcx
movb (%rax), %r11b
nop
nop
nop
xor %r10, %r10
lea addresses_A_ht+0xf49a, %rax
nop
nop
nop
and %r10, %r10
movb (%rax), %r12b
sub %r12, %r12
lea addresses_A_ht+0x14bde, %r10
nop
and %rsi, %rsi
mov (%r10), %r12w
nop
nop
nop
nop
nop
and $11241, %rcx
lea addresses_WT_ht+0x104aa, %rsi
lea addresses_UC_ht+0x1dbaa, %rdi
nop
nop
cmp %rax, %rax
mov $122, %rcx
rep movsw
and $64966, %rax
lea addresses_WT_ht+0x9fc2, %r11
add $10532, %rax
movl $0x61626364, (%r11)
nop
nop
and $36256, %r10
lea addresses_WT_ht+0x12c2a, %r11
nop
nop
xor $44674, %rbp
movb (%r11), %r12b
nop
nop
sub $5293, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Load
lea addresses_A+0x135aa, %rcx
nop
cmp %rdi, %rdi
mov (%rcx), %r13w
nop
add $21811, %r13

// Faulty Load
lea addresses_WT+0xe5aa, %rdi
nop
xor %r10, %r10
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'08': 4, '72': 6, '45': 1125, '00': 3651, '49': 16347, '48': 399, '46': 297}
00 00 49 00 00 45 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 00 00 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 00 00 00 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 00 45 49 49 49 00 49 49 49 45 49 49 49 49 49 49 49 49 49 45 49 00 49 00 49 49 49 49 49 00 49 49 49 49 49 49 00 00 00 49 49 49 49 00 49 49 49 45 49 49 45 49 49 49 49 00 00 49 00 49 49 00 49 49 49 49 49 49 00 00 46 49 49 49 49 49 49 49 49 49 48 49 49 49 00 00 49 46 49 45 49 49 49 45 49 49 49 49 48 48 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 00 00 49 49 49 45 49 45 49 49 49 49 49 49 49 49 00 49 00 49 49 00 49 00 49 49 49 49 00 49 49 49 49 46 49 48 49 49 49 00 45 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 46 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 48 48 49 49 49 49 00 49 49 00 00 00 49 49 49 49 49 49 48 49 49 00 00 00 00 49 49 49 49 49 45 49 49 49 49 49 49 49 00 00 49 49 45 49 45 49 00 49 49 49 49 45 49 00 46 49 49 00 49 49 49 49 49 49 49 00 49 00 49 00 00 49 49 00 49 49 49 49 00 45 49 00 49 49 49 00 49 00 45 49 49 49 49 49 49 49 00 00 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 00 45 49 49 49 00 49 49 49 49 49 00 45 49 49 49 49 00 49 49 49 49 49 00 49 00 45 49 00 49 49 49 49 49 49 49 49 46 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 00 49 49 00 00 49 49 49 49 00 49 49 49 49 49 49 49 45 49 49 49 00 49 49 49 49 49 49 49 49 00 46 00 00 00 49 00 49 49 49 00 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 00 00 49 00 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 00 49 00 00 49 49 00 00 49 49 49 49 49 49 49 00 49 49 00 00 00 00 49 49 49 49 00 49 49 49 49 00 49 49 49 49 49 45 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 49 00 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 72 46 00 49 49 49 49 49 49 49 49 49 49 49 00 00 49 49 49 49 45 49 00 00 49 00 45 49 49 49 49 49 49 48 48 00 49 00 49 49 49 49 49 49 00 00 49 49 49 49 49 46 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 00 45 49 49 49 49 49 49 49 46 46 49 49 49 49 00 45 49 00 00 49 49 48 48 49 49 49 49 49 49 49 49 00 00 49 00 49 49 00 49 49 49 49 49 49 49 49 00 49 45 49 00 00 49 49 49 00 49 00 00 00 49 49 49 49 00 00 46 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 45 49 45 49 49 45 49 00 00 49 49 00 49 49 49 49 49 49 00 00 00 49 00 49 49 00 00 00 49 49 49 49 49 46 49 49 49 49 49 49 49 00 00 49 49 49 49 49 49 49 45 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 45 49 00 49 49 00 49 49 45 49 49 00 49 49 49 45 49 49 49 00 45 49 49 45 49 49 49 49 49 49 49 49 45 49 00 49 49 49 49 49 49 48 49 49 49 49 49 46 49 49 45 49 49 49 45 49 49 46 49 00 00 49 49 49 49 49 00 49 45 49 49 49 49 49 49 49 45 49 49 49 49 49 49 00 00 49 49 49 49 49 49 00 49 49 49
*/
