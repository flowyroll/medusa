.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18c12, %rbp
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r9
movq %r9, %xmm2
and $0xffffffffffffffc0, %rbp
vmovaps %ymm2, (%rbp)
sub %r8, %r8
lea addresses_WT_ht+0x6612, %rbp
nop
nop
nop
xor $167, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%rbp)
nop
sub %r9, %r9
lea addresses_WT_ht+0xd212, %rsi
nop
nop
dec %r11
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
nop
nop
nop
inc %r8
lea addresses_UC_ht+0x14a12, %rbp
nop
nop
nop
add $65224, %rbx
movb (%rbp), %r11b
nop
nop
dec %r11
lea addresses_UC_ht+0x16d72, %rsi
lea addresses_WC_ht+0xc212, %rdi
clflush (%rsi)
nop
cmp $15703, %rbp
mov $59, %rcx
rep movsl
nop
sub $15180, %rbx
lea addresses_WC_ht+0x1e212, %rdi
nop
nop
nop
nop
xor $41041, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x185da, %rdi
nop
nop
nop
nop
cmp %r9, %r9
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x13f12, %rbp
nop
nop
nop
nop
xor %r9, %r9
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x9b24, %rsi
lea addresses_A_ht+0x11f92, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $103, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $27209, %rsi
lea addresses_A_ht+0x12012, %rsi
lea addresses_A_ht+0x14e12, %rdi
sub $39185, %rbx
mov $66, %rcx
rep movsq
nop
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0xf6e0, %rsi
lea addresses_WT_ht+0x6596, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $57070, %r8
mov $122, %rcx
rep movsw
nop
lfence
lea addresses_WC_ht+0x10412, %r9
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%r9)
nop
sub $16879, %rsi
lea addresses_WC_ht+0xa212, %rbp
clflush (%rbp)
nop
nop
nop
nop
and %r8, %r8
movb (%rbp), %cl
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0xf3fa, %rsi
lea addresses_WT_ht+0x1a312, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
sub $51340, %rbp
mov $97, %rcx
rep movsl
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x19df2, %rbp
nop
nop
and $39924, %r11
movl $0x61626364, (%rbp)
add $42176, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rdi

// Store
lea addresses_A+0xe542, %r15
clflush (%r15)
nop
nop
add $33565, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %r15
movntdq %xmm7, (%r15)
sub $64778, %r13

// Faulty Load
lea addresses_US+0xa12, %r13
clflush (%r13)
nop
nop
nop
and $6916, %rbp
movups (%r13), %xmm1
vpextrq $0, %xmm1, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 8, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': True}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
