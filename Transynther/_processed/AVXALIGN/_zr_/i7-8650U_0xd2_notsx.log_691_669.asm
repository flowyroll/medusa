.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x2e50, %r10
nop
nop
nop
xor $30688, %rbx
mov (%r10), %cx
nop
nop
nop
inc %r13
lea addresses_A_ht+0x1aab8, %rsi
lea addresses_WT_ht+0x140d8, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $101, %rcx
rep movsq
nop
nop
nop
nop
sub $41504, %rcx
lea addresses_normal_ht+0x11d0, %rsi
lea addresses_A_ht+0x86ae, %rdi
nop
nop
nop
add %r15, %r15
mov $5, %rcx
rep movsl
nop
nop
lfence
lea addresses_A_ht+0xc458, %rsi
nop
nop
nop
nop
nop
dec %rdi
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %r10
xor $4573, %r10
lea addresses_WT_ht+0x58, %rsi
nop
nop
and %rbx, %rbx
movw $0x6162, (%rsi)
nop
nop
dec %rsi
lea addresses_normal_ht+0x1d33e, %r15
add %r10, %r10
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
dec %rbx
lea addresses_WT_ht+0x16109, %rcx
sub $2477, %rsi
mov (%rcx), %r13
nop
dec %rcx
lea addresses_A_ht+0xc796, %rsi
lea addresses_D_ht+0xc3c8, %rdi
nop
nop
nop
xor %r10, %r10
mov $54, %rcx
rep movsl
nop
nop
xor %r10, %r10
lea addresses_A_ht+0x1a420, %rsi
lea addresses_D_ht+0x16f58, %rdi
nop
cmp %r15, %r15
mov $35, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $49938, %r10
lea addresses_WC_ht+0x14e58, %rsi
lea addresses_normal_ht+0x15b58, %rdi
nop
inc %r13
mov $64, %rcx
rep movsw
nop
nop
nop
nop
and $8138, %rsi
lea addresses_A_ht+0x1d38f, %rsi
lea addresses_WC_ht+0x6998, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $93, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x6360, %rsi
lea addresses_D_ht+0x1b658, %rdi
clflush (%rsi)
nop
nop
xor %r15, %r15
mov $108, %rcx
rep movsq
nop
nop
and $19444, %rbx
lea addresses_WT_ht+0x1143c, %rsi
lea addresses_WT_ht+0x1df58, %rdi
nop
sub $36488, %r10
mov $120, %rcx
rep movsb
nop
inc %r10
lea addresses_UC_ht+0x19668, %r13
nop
nop
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
and $0xffffffffffffffc0, %r13
vmovaps %ymm2, (%r13)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x6058, %r13
dec %r15
mov (%r13), %bx
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x1b866, %rsi
mov $0x7058d40000000bd8, %rdi
and $57866, %r11
mov $21, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
mov $0x738f2d0000000c58, %rcx
nop
nop
nop
nop
xor $46469, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
add $48192, %r15

// Load
mov $0x738f2d0000000c58, %r15
nop
nop
nop
nop
and $54727, %rbx
mov (%r15), %rcx
nop
dec %rbx

// Store
lea addresses_WC+0x1fa18, %rdi
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
dec %rdi

// Faulty Load
mov $0x738f2d0000000c58, %r11
nop
nop
add $31162, %r13
vmovaps (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 691}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
