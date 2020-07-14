.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x195ab, %rbp
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
sub $2587, %rbp
lea addresses_UC_ht+0x942b, %rdx
nop
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x61626364, (%rdx)
nop
xor %rdi, %rdi
lea addresses_A_ht+0x1dcb, %rsi
lea addresses_WC_ht+0xb3ab, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $50, %rcx
rep movsl
nop
nop
nop
nop
sub $1147, %rcx
lea addresses_normal_ht+0x1bc0f, %rsi
lea addresses_WT_ht+0x143ab, %rdi
nop
nop
xor %rbx, %rbx
mov $80, %rcx
rep movsw
nop
sub $59368, %rdi
lea addresses_D_ht+0xe6c3, %rdx
nop
nop
nop
nop
nop
dec %r13
movb $0x61, (%rdx)
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x9d2b, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rcx), %di
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x125ab, %rbx
nop
and $5009, %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
sub $46402, %rbp
lea addresses_WT_ht+0x12c37, %rsi
nop
nop
xor $27203, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rsi)
nop
add $64008, %r13
lea addresses_A_ht+0x8cab, %rdx
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rdx)
nop
and $3717, %rsi
lea addresses_UC_ht+0x5d5b, %r13
nop
nop
nop
cmp $47833, %rdx
movl $0x61626364, (%r13)
nop
inc %rcx
lea addresses_A_ht+0xde7b, %rsi
lea addresses_A_ht+0x1bbdb, %rdi
clflush (%rsi)
nop
nop
and %r11, %r11
mov $59, %rcx
rep movsw
cmp $61931, %rsi
lea addresses_WT_ht+0x1efbb, %rdx
nop
nop
nop
and $19452, %rdi
movw $0x6162, (%rdx)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x1a593, %rsi
nop
nop
nop
sub $45294, %rcx
mov (%rsi), %rdi
nop
nop
nop
nop
add %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rcx
push %rdi

// Store
lea addresses_UC+0x1f04b, %r12
nop
nop
nop
nop
nop
add $65186, %r11
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
inc %rax

// Store
lea addresses_A+0xb7ab, %r12
nop
nop
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r12)
nop
nop
xor %r10, %r10

// Load
lea addresses_UC+0x1aa2b, %r11
sub $15742, %rcx
mov (%r11), %edi
nop
nop
and %r12, %r12

// Load
lea addresses_US+0x1dfab, %rdi
nop
nop
nop
nop
add %rcx, %rcx
movb (%rdi), %r10b
nop
nop
nop
add $31713, %r12

// Store
lea addresses_UC+0x107ab, %r11
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
nop
and %r12, %r12

// Store
mov $0x2816f80000000d4b, %rax
nop
nop
nop
sub $14926, %r12
movl $0x51525354, (%rax)
nop
cmp %rax, %rax

// Load
lea addresses_A+0xb7ab, %rcx
nop
nop
inc %r8
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_WC+0x1412b, %rcx
cmp $2090, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
nop
xor %rax, %rax

// Faulty Load
lea addresses_A+0xb7ab, %rdi
nop
nop
nop
cmp $9465, %r10
mov (%rdi), %r12w
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
