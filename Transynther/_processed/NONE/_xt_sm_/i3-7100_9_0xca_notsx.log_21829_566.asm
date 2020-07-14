.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x4ee5, %r15
nop
nop
nop
nop
nop
add %rax, %rax
movups (%r15), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
sub $48866, %r11
lea addresses_WT_ht+0x98b4, %rsi
add $41860, %rcx
movb (%rsi), %r12b
inc %rax
lea addresses_normal_ht+0x49b6, %rsi
lea addresses_UC_ht+0x14494, %rdi
nop
nop
nop
nop
and %r9, %r9
mov $17, %rcx
rep movsw
nop
nop
nop
nop
and $20320, %r15
lea addresses_UC_ht+0x4648, %rsi
lea addresses_A_ht+0x8094, %rdi
nop
nop
nop
nop
cmp $28466, %r11
mov $16, %rcx
rep movsl
nop
nop
nop
nop
nop
add $56098, %rax
lea addresses_normal_ht+0x156e2, %rsi
lea addresses_D_ht+0x9cc4, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %r15
mov $121, %rcx
rep movsq
nop
xor $2542, %r9
lea addresses_normal_ht+0x7ed4, %rsi
lea addresses_normal_ht+0xcbca, %rdi
inc %r15
mov $112, %rcx
rep movsl
nop
nop
nop
nop
add $51459, %r11
lea addresses_A_ht+0xfd04, %rcx
nop
nop
nop
cmp $44046, %r12
mov (%rcx), %edi
and %r11, %r11
lea addresses_WT_ht+0x3494, %rsi
lea addresses_WT_ht+0x10d54, %rdi
clflush (%rdi)
cmp $5242, %r9
mov $125, %rcx
rep movsb
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0xfb54, %rsi
lea addresses_normal_ht+0x4f98, %rdi
nop
sub $15756, %rax
mov $99, %rcx
rep movsb
nop
nop
nop
and $34166, %r11
lea addresses_WT_ht+0xb014, %r12
nop
nop
nop
xor $28894, %rsi
movw $0x6162, (%r12)
nop
nop
dec %rax
lea addresses_UC_ht+0x2c94, %rax
nop
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rax)
add %r9, %r9
lea addresses_WT_ht+0x10b94, %rsi
lea addresses_WT_ht+0x18094, %rdi
nop
nop
dec %r15
mov $123, %rcx
rep movsb
sub $46218, %rdi
lea addresses_UC_ht+0x57e4, %r12
clflush (%r12)
nop
nop
inc %rsi
movw $0x6162, (%r12)
and $33855, %r15
lea addresses_UC_ht+0xe294, %rsi
lea addresses_A_ht+0x1953c, %rdi
and $58145, %r9
mov $80, %rcx
rep movsl
sub $64742, %rcx
lea addresses_WT_ht+0x9c94, %r9
and $33287, %rsi
movl $0x61626364, (%r9)
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0xdb14, %r13
nop
nop
nop
nop
nop
dec %rdx
movl $0x51525354, (%r13)
xor %r13, %r13

// Store
lea addresses_RW+0x14494, %rcx
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rcx)
add $48903, %rsi

// Store
lea addresses_D+0x1ff94, %rbx
nop
nop
dec %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rbx)
nop
sub $11343, %rsi

// Store
lea addresses_WT+0x109f4, %r14
nop
nop
sub $34555, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r14)
nop
and $64244, %rdx

// Load
lea addresses_WT+0x1fc44, %rcx
and %r14, %r14
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_RW+0x14494, %r13
nop
nop
dec %r14
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
