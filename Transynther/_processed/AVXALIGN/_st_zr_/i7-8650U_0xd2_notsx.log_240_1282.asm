.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x18e31, %r11
nop
nop
nop
and $26848, %rcx
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
sub $1487, %r11
lea addresses_WT_ht+0x1ce7e, %rsi
lea addresses_UC_ht+0xd48b, %rdi
nop
nop
nop
and %r11, %r11
mov $38, %rcx
rep movsq
nop
nop
lfence
lea addresses_D_ht+0x3be, %r12
nop
inc %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%r12)
nop
add $58250, %r14
lea addresses_UC_ht+0xca7e, %r11
nop
nop
cmp $63362, %rbx
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x2e7e, %rsi
lea addresses_A_ht+0xffa8, %rdi
clflush (%rdi)
nop
nop
inc %r13
mov $86, %rcx
rep movsl
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x1d77e, %r14
nop
nop
nop
nop
nop
sub $4041, %rcx
movups (%r14), %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x427e, %r12
nop
nop
xor %rdi, %rdi
movups (%r12), %xmm2
vpextrq $0, %xmm2, %r14
dec %rcx
lea addresses_normal_ht+0x8e7e, %r12
nop
nop
nop
nop
nop
and $42104, %rbx
movb (%r12), %r11b
nop
nop
nop
nop
nop
add $6192, %r13
lea addresses_WC_ht+0x15456, %rsi
lea addresses_D_ht+0xc67e, %rdi
nop
nop
nop
and %r14, %r14
mov $89, %rcx
rep movsl
nop
add %rdi, %rdi
lea addresses_WC_ht+0x467e, %rsi
lea addresses_WT_ht+0x47fe, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $50, %rcx
rep movsl
nop
nop
nop
dec %r13
lea addresses_UC_ht+0x8a7e, %r13
nop
nop
inc %r12
movb (%r13), %r14b
nop
nop
nop
xor $59043, %r13
lea addresses_D_ht+0x15382, %rbx
nop
nop
inc %r13
movl $0x61626364, (%rbx)
nop
nop
inc %rdi
lea addresses_A_ht+0x88ae, %rsi
nop
nop
nop
nop
add %rbx, %rbx
movb (%rsi), %r14b
nop
xor $25804, %rdi
lea addresses_WC_ht+0x467e, %rcx
nop
add %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rcx)
xor %rdi, %rdi
lea addresses_D_ht+0x9d6a, %rbx
nop
nop
nop
nop
nop
sub $42760, %r12
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %rdi
nop
xor $6318, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rsi

// Store
lea addresses_WC+0x14086, %r8
nop
sub %r13, %r13
movl $0x51525354, (%r8)
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_A+0x807e, %r11
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %r11
movntdq %xmm4, (%r11)
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_A+0x667e, %rsi
nop
sub $8854, %r11
mov (%rsi), %r8w
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 1, '35': 239}
00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
