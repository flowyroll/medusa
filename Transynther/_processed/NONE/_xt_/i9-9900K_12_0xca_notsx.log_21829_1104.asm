.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x16cff, %rsi
lea addresses_WT_ht+0x36a7, %rdi
clflush (%rsi)
clflush (%rdi)
cmp $58320, %rbx
mov $31, %rcx
rep movsb
nop
xor $50171, %rdi
lea addresses_D_ht+0x58a7, %r12
nop
nop
sub $8683, %r13
movups (%r12), %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
nop
nop
and $32863, %r13
lea addresses_WT_ht+0xaf27, %rcx
nop
nop
nop
cmp $35913, %r13
movw $0x6162, (%rcx)
sub $15406, %r15
lea addresses_WC_ht+0xc077, %r13
nop
nop
nop
nop
dec %r12
movl $0x61626364, (%r13)
nop
nop
nop
nop
cmp $48177, %r13
lea addresses_WT_ht+0xeda7, %rcx
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
and $52886, %rdi
lea addresses_normal_ht+0x9627, %r15
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r15)
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x3877, %rdi
nop
nop
nop
dec %rsi
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
add %rsi, %rsi
lea addresses_UC_ht+0x1e9a7, %r13
nop
cmp $8537, %rsi
movb (%r13), %cl
nop
nop
nop
nop
nop
sub $37047, %rcx
lea addresses_WC_ht+0x9fa7, %rsi
lea addresses_UC_ht+0x8a2a, %rdi
nop
add %r12, %r12
mov $78, %rcx
rep movsw
nop
add %rdi, %rdi
lea addresses_D_ht+0x1ea3, %rsi
lea addresses_D_ht+0xfca7, %rdi
nop
nop
add $26512, %rdx
mov $72, %rcx
rep movsb
nop
nop
nop
xor $18347, %r13
lea addresses_UC_ht+0x3d27, %rdx
nop
inc %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rdx)
nop
sub %rcx, %rcx
lea addresses_A_ht+0x89a7, %rsi
lea addresses_D_ht+0x12127, %rdi
nop
nop
nop
sub %r15, %r15
mov $65, %rcx
rep movsw
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0xe8b2, %rsi
lea addresses_A_ht+0x1dda7, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $20294, %r12
mov $90, %rcx
rep movsq
nop
nop
add %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x34a7, %rsi
nop
sub $44303, %r10
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_WT+0x10a67, %rbx
nop
nop
nop
nop
cmp $61637, %r10
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
dec %r10

// Store
lea addresses_D+0x55a7, %rbp
nop
nop
nop
nop
nop
and $4217, %rdi
movb $0x51, (%rbp)

// Exception!!!
nop
mov (0), %rsi
and $19457, %rdi

// Store
lea addresses_D+0x1c817, %rsi
dec %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rsi)

// Exception!!!
nop
nop
nop
mov (0), %rdx
nop
nop
nop
nop
xor $41112, %rdx

// Load
lea addresses_A+0x6da7, %r10
nop
nop
nop
nop
nop
add %rbx, %rbx
movb (%r10), %dl
cmp $1710, %rcx

// Store
lea addresses_WT+0x843f, %rsi
nop
nop
nop
nop
nop
sub $43833, %rbp
movw $0x5152, (%rsi)
nop
nop
nop
nop
xor $64100, %rcx

// Store
lea addresses_WC+0xee7, %rcx
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
nop
add $25436, %rbp

// Faulty Load
lea addresses_D+0x1bda7, %rcx
xor $45326, %r10
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
