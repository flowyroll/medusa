.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x97d0, %r15
nop
nop
nop
nop
nop
and %r14, %r14
mov (%r15), %si
nop
nop
cmp %r9, %r9
lea addresses_D_ht+0x9348, %rdx
nop
nop
cmp $1226, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
add %rsi, %rsi
lea addresses_D_ht+0x1df40, %rsi
lea addresses_A_ht+0x13d0, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $69, %rcx
rep movsl
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x13338, %rsi
lea addresses_WT_ht+0x9b20, %rdi
nop
nop
nop
inc %r9
mov $85, %rcx
rep movsw
nop
nop
nop
nop
sub $38793, %rsi
lea addresses_UC_ht+0x12280, %rsi
lea addresses_UC_ht+0x1540, %rdi
nop
nop
sub $22280, %r15
mov $27, %rcx
rep movsl
nop
nop
add $44499, %r14
lea addresses_D_ht+0xedc0, %rsi
lea addresses_normal_ht+0x17ec0, %rdi
clflush (%rsi)
nop
nop
cmp %r10, %r10
mov $102, %rcx
rep movsw
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x18bc0, %r10
nop
nop
nop
cmp $9703, %rdx
movb $0x61, (%r10)
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x1750, %rdx
nop
nop
nop
nop
nop
cmp %r15, %r15
movb $0x61, (%rdx)
nop
nop
and %r14, %r14
lea addresses_A_ht+0x14280, %r9
sub %rcx, %rcx
mov (%r9), %r10w
cmp %r10, %r10
lea addresses_normal_ht+0xa440, %r9
nop
nop
nop
nop
nop
sub $22818, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm7
vmovups %ymm7, (%r9)
nop
xor %r9, %r9
lea addresses_A_ht+0xd888, %rsi
lea addresses_D_ht+0x12e8, %rdi
nop
nop
nop
nop
xor $60569, %r14
mov $22, %rcx
rep movsl
nop
nop
nop
nop
add $15469, %r10
lea addresses_WC_ht+0x12040, %rsi
lea addresses_D_ht+0xaf1a, %rdi
clflush (%rdi)
add $21616, %rdx
mov $20, %rcx
rep movsw
cmp $2859, %rcx
lea addresses_WC_ht+0x13c1b, %r15
nop
nop
nop
cmp %rdi, %rdi
movb (%r15), %r10b
nop
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x142ec, %rdx
clflush (%rdx)
nop
nop
nop
nop
xor $6711, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
nop
and %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rdx

// Store
mov $0xd40, %r12
nop
nop
nop
inc %rax
movb $0x51, (%r12)
nop
nop
add %rax, %rax

// Store
lea addresses_UC+0x19592, %r14
nop
nop
sub $55662, %rbx
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
nop
nop
nop
and $65293, %rdx

// Store
lea addresses_WC+0xed40, %rbx
nop
nop
xor $19897, %rax
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
and $62319, %rbx

// Store
lea addresses_WC+0x1c540, %r12
sub %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
sub $58808, %rax

// Faulty Load
lea addresses_WC+0xed40, %r15
nop
nop
nop
inc %rdx
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'6b': 1, '49': 13, '46': 11761, '00': 10054}
00 46 46 46 46 46 00 00 46 00 00 46 46 46 00 46 00 00 46 46 46 00 46 46 00 00 46 46 46 46 46 00 00 46 00 00 00 46 00 00 46 00 46 00 00 46 00 00 00 46 00 46 00 00 00 46 46 46 00 00 00 00 46 46 00 46 00 00 46 46 00 00 46 00 00 46 46 46 46 46 46 46 00 46 00 00 00 46 46 46 00 46 00 46 46 00 00 46 00 00 00 00 46 00 46 46 00 00 46 46 00 46 00 46 46 00 00 46 00 46 46 46 00 00 46 46 46 46 00 46 46 46 46 46 00 46 00 00 00 46 46 00 46 46 46 46 00 46 46 46 46 46 46 00 00 46 46 00 46 00 46 46 00 00 00 46 00 46 00 00 00 46 00 46 00 00 46 00 46 46 00 46 46 00 46 00 46 00 46 00 00 46 46 46 00 46 46 00 46 00 00 00 00 00 46 00 46 00 00 46 00 00 00 00 46 46 00 46 46 00 00 00 00 00 46 46 00 46 46 00 00 00 00 00 46 00 00 46 46 00 00 00 46 00 46 00 46 00 46 00 46 00 46 46 46 00 00 00 46 46 00 46 46 46 46 00 46 00 00 46 46 00 00 00 00 46 00 46 46 46 00 46 00 46 00 46 00 46 46 00 46 46 46 00 46 00 00 00 00 46 00 00 46 46 00 46 00 46 00 46 46 00 46 00 00 46 00 46 00 46 46 00 00 46 00 46 46 46 46 46 46 00 46 46 00 00 46 00 46 46 46 00 46 00 00 46 46 46 46 00 46 46 00 00 46 46 00 00 46 46 00 46 00 46 00 46 00 00 00 46 46 00 46 46 00 46 00 00 46 46 00 00 00 46 00 46 46 00 46 00 00 00 46 46 00 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 00 00 46 46 00 00 46 46 46 46 46 46 46 46 46 00 46 00 00 46 46 00 46 00 46 00 00 00 00 46 46 46 00 46 00 46 46 00 46 00 46 00 46 46 00 46 46 00 46 46 46 46 00 00 46 00 46 46 00 00 46 46 46 00 46 00 46 00 46 46 46 00 00 46 46 46 00 00 46 46 46 00 00 00 46 46 00 00 00 46 00 00 46 46 46 00 46 00 46 46 00 00 00 00 46 00 46 00 00 00 00 46 00 00 00 00 46 00 00 46 00 00 46 46 46 00 46 46 00 46 00 00 46 00 46 46 00 46 46 00 00 00 46 00 46 00 46 00 46 00 00 46 00 00 00 00 00 46 46 00 46 00 46 46 00 00 46 00 00 00 00 46 46 46 46 00 00 46 46 00 46 46 46 00 46 00 00 46 00 00 46 00 46 46 00 46 46 46 46 46 00 46 00 00 00 46 00 46 00 00 46 00 46 00 00 00 46 00 46 46 00 00 00 00 00 46 00 46 00 00 00 46 46 46 46 00 00 00 00 00 00 46 46 00 00 46 46 46 46 00 46 00 46 00 00 00 00 46 46 46 46 46 00 00 46 46 46 00 46 46 00 00 46 00 00 00 46 00 00 46 46 00 46 00 46 46 46 46 00 46 00 46 00 00 00 46 46 46 00 00 46 46 00 46 00 46 46 00 46 46 00 46 46 46 00 46 00 00 46 46 46 46 46 46 46 00 00 00 00 00 00 46 46 00 00 00 46 00 46 00 46 46 46 00 00 46 00 00 00 00 00 46 46 46 00 00 00 46 46 46 46 00 46 46 46 46 00 46 00 46 00 46 00 46 46 00 46 00 46 00 46 00 46 00 00 46 46 46 46 00 46 46 46 00 00 00 00 00 00 46 46 46 46 46 00 46 46 46 00 00 46 00 00 46 46 46 00 46 46 00 46 00 00 46 00 46 00 46 00 46 00 46 00 00 00 00 46 46 46 46 00 00 46 00 46 46 46 46 00 00 00 00 00 46 00 00 46 46 46 00 00 46 00 46 00 46 46 00 46 46 46 00 00 46 00 46 46 46 00 46 00 46 00 46 00 46 00 46 00 00 46 00 00 46 46 46 00 46 00 00 46 00 46 46 00 46 00 46 46 00 00 46 46 46 46 46 46 46 00 46 00 00 46 46 00 00 46 00 00 46 46 00 46 46 00 46 00 46 46 46 46 00 00 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 46 46 00 00 00 46 46 00 46 00 46 46 00 00 46 46 46 46 46 00 46 00 46 46 46 00 00 46 00 00
*/
