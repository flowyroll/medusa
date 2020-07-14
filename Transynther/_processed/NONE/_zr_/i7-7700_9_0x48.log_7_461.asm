.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xde40, %r15
add %rbp, %rbp
mov (%r15), %r11
nop
nop
nop
nop
nop
dec %r15
lea addresses_WT_ht+0x3b23, %r15
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r15)
nop
nop
xor $43184, %rbp
lea addresses_D_ht+0x16a40, %r13
nop
nop
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%r13)
dec %r15
lea addresses_normal_ht+0x93c0, %rsi
lea addresses_A_ht+0x10860, %rdi
clflush (%rsi)
nop
nop
nop
inc %r15
mov $42, %rcx
rep movsb
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x1cb40, %r11
add %r15, %r15
mov (%r11), %cx
nop
dec %r13
lea addresses_WC_ht+0xf3f8, %rbp
nop
nop
nop
and $36326, %r11
mov (%rbp), %dx
nop
nop
nop
nop
add $46559, %r11
lea addresses_WT_ht+0xa922, %rdi
nop
nop
nop
and %rcx, %rcx
movl $0x61626364, (%rdi)
lfence
lea addresses_UC_ht+0x17cc0, %rdx
nop
nop
add %rsi, %rsi
movl $0x61626364, (%rdx)
nop
nop
nop
sub $1130, %rbp
lea addresses_normal_ht+0x10e40, %rcx
nop
nop
nop
nop
and $15620, %r13
mov (%rcx), %r11
and %rdi, %rdi
lea addresses_WC_ht+0xd6d0, %rcx
xor %r11, %r11
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rcx

// Store
mov $0x3cd0e70000000ca0, %r13
add $36754, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_A+0xb640, %rcx
nop
sub %r15, %r15
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'00': 7}
00 00 00 00 00 00 00
*/
