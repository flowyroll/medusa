.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x18502, %rsi
lea addresses_UC_ht+0x43b1, %rdi
nop
nop
nop
xor %r15, %r15
mov $116, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $26058, %rcx
lea addresses_A_ht+0xed09, %r9
add %r12, %r12
mov $0x6162636465666768, %r11
movq %r11, (%r9)
nop
nop
nop
xor $32538, %rdi
lea addresses_WC_ht+0x19509, %r11
nop
nop
nop
nop
sub %r9, %r9
movl $0x61626364, (%r11)
nop
nop
nop
nop
dec %r11
lea addresses_UC_ht+0x19d09, %r15
sub $3930, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r15)
nop
and $37243, %r11
lea addresses_WC_ht+0x6225, %rsi
lea addresses_normal_ht+0x1ba70, %rdi
nop
nop
nop
dec %rbp
mov $116, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r11
lea addresses_WT_ht+0xed09, %rsi
lea addresses_A_ht+0x15d09, %rdi
clflush (%rsi)
nop
nop
nop
xor %rbp, %rbp
mov $68, %rcx
rep movsl
nop
nop
dec %rsi
lea addresses_normal_ht+0x1b0e9, %r11
dec %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
nop
nop
and $7269, %r15
lea addresses_WT_ht+0xb189, %rdi
clflush (%rdi)
nop
and $58726, %r9
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
nop
sub $48810, %r9
lea addresses_UC_ht+0x5cbe, %rcx
and $59834, %r12
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rdi

// Store
lea addresses_WC+0x1ed09, %r8
and $16658, %r10
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
sub $5260, %r8

// Store
mov $0x4545580000000d09, %rax
nop
nop
nop
nop
add $32678, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%rax)
nop
nop
nop
cmp %r13, %r13

// Store
mov $0x4545580000000d09, %r12
add $33858, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r12)
nop
and $31470, %r13

// Store
mov $0x4545580000000d09, %r8
nop
nop
nop
nop
dec %r12
movb $0x51, (%r8)
nop
inc %rax

// Store
mov $0x258c3f0000000f49, %r8
nop
nop
nop
nop
dec %r12
movb $0x51, (%r8)
dec %r12

// Faulty Load
mov $0x4545580000000d09, %r8
nop
nop
nop
add %rbx, %rbx
mov (%r8), %r13w
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'20': 1, '51': 798, '00': 79}
51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 00 00 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 00 00 51 00 51 51 51 00 51 00 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 00 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 20 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 00 51 51 51 51 00 51 00 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
