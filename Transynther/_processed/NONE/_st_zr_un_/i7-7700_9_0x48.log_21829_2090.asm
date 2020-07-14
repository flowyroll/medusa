.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1be4b, %rcx
nop
nop
nop
nop
nop
and $55125, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
and $0xffffffffffffffc0, %rcx
movntdq %xmm1, (%rcx)
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0xd8cb, %rax
nop
nop
nop
inc %r15
mov (%rax), %cx
nop
nop
nop
nop
nop
sub $41190, %rcx
lea addresses_UC_ht+0x1cc4b, %r15
cmp $21770, %r11
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
and $0xffffffffffffffc0, %r15
vmovaps %ymm7, (%r15)
nop
nop
nop
nop
sub $17508, %r15
lea addresses_WT_ht+0x1d723, %rsi
lea addresses_normal_ht+0x16e6b, %rdi
nop
nop
xor $8280, %rbp
mov $46, %rcx
rep movsl
nop
nop
and %rbx, %rbx
lea addresses_A_ht+0x92cb, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %rdx
vmovaps %ymm4, (%rdx)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0xaa25, %rsi
nop
nop
inc %rbx
movl $0x61626364, (%rsi)
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x1ddfb, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0x126cb, %rsi
lea addresses_normal_ht+0x9e4b, %rdi
clflush (%rdi)
cmp $1862, %rbx
mov $65, %rcx
rep movsq
nop
nop
nop
inc %rbx
lea addresses_A_ht+0x176cb, %rax
nop
nop
nop
nop
nop
xor $32079, %rbp
movl $0x61626364, (%rax)
nop
nop
nop
dec %r15
lea addresses_A_ht+0xd2cb, %rsi
lea addresses_normal_ht+0xa403, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $88, %rcx
rep movsw
nop
xor $31409, %rax
lea addresses_WT_ht+0x8139, %rax
nop
nop
nop
nop
cmp $55500, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0xc4b, %rbx
dec %rdi
movups (%rbx), %xmm3
vpextrq $0, %xmm3, %rax
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x62cb, %rbp
nop
nop
nop
nop
nop
and %rsi, %rsi
mov (%rbp), %dx
sub %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %r9
push %rax

// Store
lea addresses_WT+0x100cb, %r10
nop
xor $5900, %r8
movl $0x51525354, (%r10)
xor %r13, %r13

// Store
lea addresses_A+0x16d2f, %r9
clflush (%r9)
nop
sub $42449, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
nop
and $34454, %r9

// Store
lea addresses_WT+0x864b, %r13
nop
inc %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r13)

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
and %r8, %r8

// Store
lea addresses_D+0xf2cb, %r8
add %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, (%r8)
dec %r15

// Faulty Load
lea addresses_UC+0x122cb, %r10
nop
nop
nop
nop
nop
cmp $33430, %r8
mov (%r10), %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 3, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 11, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'b8': 1, '58': 16967, '00': 4861}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 00 58 58 58 00 00 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 58 58 58 58 58 00 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 00 58 58 58 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 00 00 00 00 00 00 00 00 00 58 58 00 00 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 00 00 00 00 00 00 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 58 58 58 58 00 00 00 00 00 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 00 00 00 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58
*/
