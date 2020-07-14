.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1b32b, %rsi
lea addresses_A_ht+0x1c52b, %rdi
nop
nop
cmp $52716, %r14
mov $15, %rcx
rep movsw
cmp $1940, %r9
lea addresses_normal_ht+0x91bb, %rsi
lea addresses_WC_ht+0x197c2, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov $35, %rcx
rep movsl
cmp %rbp, %rbp
lea addresses_D_ht+0x1d72b, %rsi
lea addresses_normal_ht+0x2f2b, %rdi
nop
nop
nop
nop
nop
xor $64571, %rdx
mov $125, %rcx
rep movsb
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x101ab, %rsi
lea addresses_WC_ht+0x92c3, %rdi
nop
xor $56823, %rbx
mov $18, %rcx
rep movsq
nop
cmp $38903, %rcx
lea addresses_A_ht+0x68eb, %rsi
lea addresses_A_ht+0xb62b, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $16, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0xf8d1, %rdx
nop
nop
nop
nop
xor $35221, %rdi
movb (%rdx), %r14b
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x7f2b, %rbp
add %r14, %r14
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x177bf, %rsi
lea addresses_A_ht+0x17a2b, %rdi
nop
nop
nop
nop
inc %r14
mov $113, %rcx
rep movsl
nop
nop
add $2269, %rcx
lea addresses_A_ht+0x1143b, %rsi
lea addresses_normal_ht+0xd72b, %rdi
nop
nop
nop
nop
inc %rbx
mov $7, %rcx
rep movsw
nop
nop
sub $28474, %rbp
lea addresses_UC_ht+0xd72b, %rcx
nop
nop
nop
nop
nop
and %r9, %r9
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
nop
nop
and $4902, %rsi
lea addresses_A_ht+0x18b2b, %rbp
nop
nop
nop
nop
xor $33551, %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
nop
add $59614, %r9
lea addresses_UC_ht+0x23ab, %rsi
lea addresses_UC_ht+0xdceb, %rdi
nop
nop
nop
nop
sub $31087, %r14
mov $35, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0xe5ab, %rdi
nop
nop
and %rbx, %rbx
mov (%rdi), %si
nop
nop
inc %r9
lea addresses_UC_ht+0x1754f, %rbp
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov (%rbp), %di
nop
nop
nop
dec %r9
lea addresses_normal_ht+0x1eb2b, %rdx
and $15598, %rcx
mov (%rdx), %r14d
nop
nop
xor $55524, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0xba07, %rdx
clflush (%rdx)
nop
inc %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%rdx)
xor %r14, %r14

// Load
lea addresses_PSE+0x51e3, %r10
nop
nop
nop
nop
inc %rbx
movb (%r10), %r14b
nop
nop
nop
nop
sub %r14, %r14

// Faulty Load
lea addresses_A+0x1572b, %r10
xor $43712, %rbx
movups (%r10), %xmm6
vpextrq $0, %xmm6, %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': True}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
