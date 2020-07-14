.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1d5b3, %rsi
lea addresses_D_ht+0x1007, %rdi
nop
and $53843, %rdx
mov $106, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_UC_ht+0xd927, %r15
add %r11, %r11
movb $0x61, (%r15)
nop
xor %rcx, %rcx
lea addresses_A_ht+0x1a527, %rcx
nop
nop
cmp $57206, %r13
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
and $43797, %rsi
lea addresses_A_ht+0x2cc9, %rsi
lea addresses_normal_ht+0x1b927, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r11
mov $47, %rcx
rep movsl
nop
nop
nop
cmp $2097, %rsi
lea addresses_UC_ht+0x463f, %rdi
nop
nop
nop
nop
inc %rcx
mov (%rdi), %rsi
inc %rdi
lea addresses_normal_ht+0xa833, %rdi
nop
nop
nop
inc %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rdi)
nop
add %r15, %r15
lea addresses_WC_ht+0x9a57, %rsi
lea addresses_UC_ht+0x1b267, %rdi
nop
nop
nop
nop
add $38370, %rax
mov $121, %rcx
rep movsq
nop
sub $23469, %r11
lea addresses_normal_ht+0x14d27, %r15
nop
nop
cmp %rcx, %rcx
mov (%r15), %edi
nop
nop
cmp $52859, %r13
lea addresses_UC_ht+0xaf19, %r13
nop
nop
nop
nop
nop
inc %rcx
movb (%r13), %r15b
nop
and %r15, %r15
lea addresses_WC_ht+0x15997, %rsi
lea addresses_normal_ht+0x1796b, %rdi
nop
add $36724, %rax
mov $103, %rcx
rep movsb
add $10798, %rcx
lea addresses_WC_ht+0x1255d, %r13
clflush (%r13)
nop
nop
nop
nop
add %rcx, %rcx
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
nop
nop
nop
nop
add $31092, %rax
lea addresses_D_ht+0x3dcb, %rsi
lea addresses_D_ht+0x12a27, %rdi
nop
nop
nop
cmp $23856, %r15
mov $35, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x10127, %rdi
nop
nop
nop
nop
nop
sub $33210, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rdi)
nop
sub $65271, %rcx
lea addresses_D_ht+0x6927, %rsi
lea addresses_UC_ht+0x10cc7, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r13, %r13
mov $116, %rcx
rep movsb
and %r11, %r11
lea addresses_A_ht+0x12ec7, %rdx
clflush (%rdx)
sub $58592, %r15
movb (%rdx), %al
nop
nop
nop
nop
nop
add %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rcx
push %rdx

// Store
lea addresses_RW+0x276f, %rdx
cmp %r11, %r11
movl $0x51525354, (%rdx)
nop
nop
add $44002, %rdx

// Load
lea addresses_WC+0x18cf7, %rdx
and %rax, %rax
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %r10
cmp %r10, %r10

// Store
lea addresses_WT+0x74af, %r14
nop
nop
nop
nop
cmp %r11, %r11
movb $0x51, (%r14)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_D+0x18927, %r14
nop
nop
nop
nop
sub %r13, %r13
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'36': 354}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
