.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x22ee, %rsi
lea addresses_UC_ht+0x117ee, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $9, %rcx
rep movsw
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x1bd0e, %rsi
lea addresses_WT_ht+0xeafe, %rdi
nop
cmp %r12, %r12
mov $89, %rcx
rep movsw
and $15114, %rcx
lea addresses_UC_ht+0x19cee, %r8
nop
nop
nop
nop
nop
dec %rax
movups (%r8), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
and %r8, %r8
lea addresses_UC_ht+0x1e76e, %rdi
nop
nop
lfence
movw $0x6162, (%rdi)
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0x10ee, %rdi
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%rdi)
nop
nop
nop
nop
dec %rbp
lea addresses_WC_ht+0x11fce, %rdi
nop
nop
nop
nop
add $232, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
xor $12168, %rbp
lea addresses_D_ht+0x1b84e, %rbp
nop
nop
xor %r12, %r12
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x1926e, %rbp
clflush (%rbp)
nop
and %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
nop
and $19535, %rcx
lea addresses_D_ht+0xb6ee, %rdi
nop
cmp %rcx, %rcx
mov (%rdi), %rbp
nop
nop
nop
nop
and $18129, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rbx
push %rdx
push %rsi

// Load
lea addresses_WT+0x7cde, %rbx
nop
nop
nop
nop
sub $38155, %r11
movups (%rbx), %xmm4
vpextrq $0, %xmm4, %r9
nop
inc %r10

// Store
lea addresses_normal+0xe3cd, %rsi
add %rdx, %rdx
movw $0x5152, (%rsi)
nop
nop
nop
lfence

// Load
lea addresses_WC+0x1c2ee, %rdx
nop
inc %r11
vmovups (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
xor $46062, %rdx

// Store
lea addresses_PSE+0x1eeee, %rsi
clflush (%rsi)
nop
add $65420, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovaps %ymm7, (%rsi)
nop
nop
nop
nop
add $59677, %rdx

// Store
lea addresses_WC+0x187ee, %r15
xor %rbx, %rbx
movl $0x51525354, (%r15)
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_PSE+0x1eeee, %rbx
nop
nop
xor %r10, %r10
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
cmp $49555, %rbx

// Store
lea addresses_PSE+0x1eeee, %r11
nop
nop
nop
cmp $11825, %rsi
movl $0x51525354, (%r11)

// Exception!!!
nop
nop
mov (0), %r10
nop
nop
sub %rsi, %rsi

// Load
mov $0x580, %r9
nop
nop
nop
dec %r10
movb (%r9), %r15b
nop
nop
xor $49493, %rbx

// Faulty Load
lea addresses_PSE+0x1eeee, %rsi
nop
nop
nop
add $38214, %r15
mov (%rsi), %r10d
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'54': 282}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
