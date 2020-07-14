.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1bb68, %rsi
clflush (%rsi)
nop
xor %rax, %rax
mov (%rsi), %r13
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x4568, %r8
nop
nop
sub %rbx, %rbx
movb (%r8), %r9b
and $8259, %rsi
lea addresses_WC_ht+0x4908, %r9
clflush (%r9)
nop
nop
nop
nop
nop
and %r8, %r8
mov (%r9), %eax
nop
and $265, %rax
lea addresses_WC_ht+0x1526c, %rbp
nop
nop
nop
nop
nop
cmp $60131, %r13
mov $0x6162636465666768, %r8
movq %r8, (%rbp)
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x14210, %rbx
nop
nop
nop
nop
nop
dec %rsi
mov (%rbx), %r13
nop
add $13469, %r13
lea addresses_A_ht+0x15768, %rbx
dec %r13
movb (%rbx), %al
nop
cmp %r8, %r8
lea addresses_A_ht+0x1e398, %rbx
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
cmp $26349, %rax
lea addresses_WT_ht+0x17908, %r8
nop
nop
dec %rbp
movl $0x61626364, (%r8)
nop
nop
nop
nop
add %rax, %rax
lea addresses_WT_ht+0x16268, %r8
sub %rsi, %rsi
movups (%r8), %xmm4
vpextrq $1, %xmm4, %r13
nop
sub $46186, %r9
lea addresses_WC_ht+0x1a924, %rbx
nop
nop
nop
cmp $28076, %r9
vmovups (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
sub $30518, %rbx
lea addresses_D_ht+0x82e8, %r9
nop
nop
dec %r13
mov (%r9), %bp
add %rbx, %rbx
lea addresses_UC_ht+0x12c1e, %rsi
nop
nop
nop
nop
cmp %r13, %r13
movb $0x61, (%rsi)
nop
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0x16108, %rax
inc %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rax)
nop
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x2268, %rsi
nop
nop
nop
nop
and $54937, %rbx
mov (%rsi), %r13
nop
nop
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0x18b90, %rsi
lea addresses_A_ht+0xd844, %rdi
clflush (%rdi)
nop
and $40165, %r9
mov $55, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0x125be00000000168, %rcx
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movaps %xmm6, (%rcx)
xor $3552, %rax

// Load
lea addresses_WT+0x16d68, %r13
nop
nop
nop
and $36152, %r9
mov (%r13), %esi
nop
cmp %rcx, %rcx

// Store
mov $0xc68, %r9
nop
nop
add $43629, %rbx
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
and $40485, %r13

// Faulty Load
lea addresses_A+0x8d68, %rcx
nop
nop
nop
xor %rsi, %rsi
mov (%rcx), %r13w
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'00': 1}
00
*/
