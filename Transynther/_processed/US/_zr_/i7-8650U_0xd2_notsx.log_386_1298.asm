.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x14148, %r14
nop
nop
inc %rdx
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
add $60338, %rax
lea addresses_UC_ht+0x18098, %rsi
lea addresses_WC_ht+0x42d8, %rdi
nop
nop
nop
nop
nop
xor $31045, %r11
mov $63, %rcx
rep movsb
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x157d8, %rsi
lea addresses_UC_ht+0x172b0, %rdi
nop
nop
cmp $35341, %r14
mov $18, %rcx
rep movsq
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x12058, %rsi
lea addresses_UC_ht+0xbfd8, %rdi
clflush (%rdi)
nop
nop
and $6354, %rbp
mov $78, %rcx
rep movsl
and $11029, %r14
lea addresses_A_ht+0x13758, %rsi
lea addresses_A_ht+0x57d8, %rdi
inc %rdx
mov $110, %rcx
rep movsl
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x7c18, %rbp
nop
nop
and $3577, %r11
and $0xffffffffffffffc0, %rbp
vmovaps (%rbp), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
add $36299, %rdx
lea addresses_A_ht+0x7d8, %rcx
clflush (%rcx)
nop
cmp $32462, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
and $0xffffffffffffffc0, %rcx
movaps %xmm0, (%rcx)
nop
nop
sub $40301, %rax
lea addresses_WT_ht+0xa8d8, %rsi
lea addresses_WT_ht+0xac78, %rdi
nop
nop
nop
nop
nop
and $29317, %rdx
mov $54, %rcx
rep movsq
nop
nop
nop
nop
sub $30323, %r11
lea addresses_D_ht+0x80d8, %rsi
lea addresses_WC_ht+0x99d8, %rdi
nop
nop
nop
nop
nop
sub $35647, %r14
mov $74, %rcx
rep movsb
cmp %rdi, %rdi
lea addresses_UC_ht+0x1ada4, %rsi
lea addresses_UC_ht+0xc038, %rdi
nop
sub %r11, %r11
mov $25, %rcx
rep movsl
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rax
push %rbp
push %rcx

// Store
mov $0x15f6970000000d76, %r9
clflush (%r9)
nop
nop
nop
nop
nop
dec %rcx
movb $0x51, (%r9)
nop
and %r9, %r9

// Store
lea addresses_A+0x1e808, %r9
add %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_US+0x27d8, %rax
nop
nop
cmp %r10, %r10
movups (%rax), %xmm6
vpextrq $0, %xmm6, %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'00': 386}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
