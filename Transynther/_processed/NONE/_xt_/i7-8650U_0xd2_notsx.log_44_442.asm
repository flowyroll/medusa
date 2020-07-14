.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1a613, %r10
nop
nop
nop
nop
nop
xor $51316, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
xor $43712, %r13
lea addresses_normal_ht+0x5827, %rsi
lea addresses_A_ht+0x93c7, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r9
mov $92, %rcx
rep movsb
nop
cmp $61778, %rdi
lea addresses_A_ht+0xb1c7, %r9
nop
nop
sub $2210, %rbx
mov (%r9), %edi
nop
nop
nop
nop
dec %r10
lea addresses_A_ht+0x1c5c7, %r10
nop
nop
nop
cmp $37007, %rcx
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
nop
nop
add $45996, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0x16fc7, %rbx
add %r11, %r11
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
xor $20222, %rdx

// Store
lea addresses_RW+0xe5f3, %rcx
inc %r14
movw $0x5152, (%rcx)
nop
nop
nop
nop
and $17950, %rcx

// Store
lea addresses_D+0xbb4b, %rdx
nop
nop
cmp %rcx, %rcx
movw $0x5152, (%rdx)
nop
nop
inc %r11

// Store
mov $0x5c7, %rbx
nop
nop
nop
nop
nop
and $23225, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rbx)
and $5199, %rbx

// Faulty Load
lea addresses_RW+0x59c7, %r11
nop
nop
nop
nop
dec %rdx
mov (%r11), %ebx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'32': 44}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
