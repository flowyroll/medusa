.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x7422, %rsi
lea addresses_UC_ht+0xd942, %rdi
add %rbx, %rbx
mov $56, %rcx
rep movsl
nop
nop
nop
nop
nop
and $51799, %r9
lea addresses_normal_ht+0x1346d, %r8
clflush (%r8)
and %rax, %rax
movb (%r8), %bl
nop
nop
sub $50846, %rsi
lea addresses_UC_ht+0x1abe2, %r9
nop
nop
nop
nop
inc %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
and $0xffffffffffffffc0, %r9
vmovaps %ymm5, (%r9)
nop
and $14150, %r9
lea addresses_normal_ht+0x4c46, %rax
sub %rdi, %rdi
movb $0x61, (%rax)
nop
nop
add $46870, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_normal+0x159c5, %rcx
nop
nop
dec %rdx
movl $0x51525354, (%rcx)
nop
nop
nop
inc %rdx

// Store
lea addresses_A+0x10d42, %rcx
xor %r15, %r15
movw $0x5152, (%rcx)
nop
dec %r9

// Store
lea addresses_D+0x1bd42, %rcx
xor %rax, %rax
movb $0x51, (%rcx)
nop
add $48929, %rdx

// Load
lea addresses_WT+0x7342, %r9
nop
nop
sub $31080, %r15
movups (%r9), %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
inc %rdx

// Store
lea addresses_A+0xbac2, %rax
cmp $39133, %rdx
mov $0x5152535455565758, %r9
movq %r9, (%rax)
nop
nop
xor $7202, %rbx

// Store
lea addresses_RW+0xf542, %rax
nop
and $1710, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%rax)
nop
nop
nop
nop
nop
add $32212, %r11

// Load
lea addresses_normal+0x1ed15, %rax
sub $28833, %r9
movb (%rax), %bl
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_D+0x1d42, %r11
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%r11)
nop
nop
nop
nop
dec %rdx

// Store
mov $0xd2a0500000003c2, %rcx
cmp $30487, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
dec %r15

// Store
lea addresses_WT+0x15372, %rcx
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rcx)
xor %r11, %r11

// Faulty Load
lea addresses_RW+0xf542, %rax
inc %r9
mov (%rax), %r15
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'58': 2}
58 58
*/
