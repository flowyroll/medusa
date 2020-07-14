.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5424, %rsi
lea addresses_WT_ht+0x1a358, %rdi
inc %r9
mov $79, %rcx
rep movsw
nop
dec %rax
lea addresses_normal_ht+0x13d68, %r15
nop
nop
xor %r10, %r10
movups (%r15), %xmm1
vpextrq $0, %xmm1, %rdi
inc %r15
lea addresses_UC_ht+0x2860, %r15
clflush (%r15)
nop
nop
and %rdi, %rdi
vmovups (%r15), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
nop
and %r10, %r10
lea addresses_WT_ht+0xd086, %rcx
nop
nop
and %r9, %r9
movb (%rcx), %al
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x62e8, %rsi
lea addresses_UC_ht+0x9cf4, %rdi
clflush (%rdi)
nop
and %rbp, %rbp
mov $55, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $63105, %r10
lea addresses_normal_ht+0x9d18, %r9
nop
nop
nop
nop
nop
sub $57418, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%r9)
nop
nop
nop
add $19452, %rsi
lea addresses_D_ht+0x17b58, %rsi
clflush (%rsi)
xor $63830, %r15
movl $0x61626364, (%rsi)
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x19b38, %rsi
lea addresses_WT_ht+0x1ef58, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $60, %rcx
rep movsw
nop
nop
nop
nop
inc %rax
lea addresses_WT_ht+0xc528, %r9
nop
sub $40443, %rsi
movb (%r9), %cl
nop
cmp %r15, %r15
lea addresses_WT_ht+0x11298, %rbp
nop
nop
nop
nop
cmp $31929, %r10
movw $0x6162, (%rbp)
nop
nop
add $16585, %r15
lea addresses_normal_ht+0xf758, %rdi
add %r15, %r15
mov (%rdi), %r9
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0xc358, %rdi
clflush (%rdi)
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
xor $57448, %rax
lea addresses_WC_ht+0x18d70, %rcx
nop
nop
nop
cmp %rax, %rax
mov (%rcx), %rsi
nop
nop
dec %rcx
lea addresses_D_ht+0xe758, %rax
nop
nop
nop
nop
nop
add $10056, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x15da0, %r9
nop
nop
inc %r15
mov $0x6162636465666768, %rbp
movq %rbp, (%r9)
nop
nop
xor $59366, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0xa758, %r13
nop
nop
cmp %r8, %r8
movb $0x51, (%r13)
and $65142, %r8

// Store
mov $0xd58, %r12
clflush (%r12)
nop
nop
nop
nop
nop
add %rdx, %rdx
movw $0x5152, (%r12)
nop
dec %r13

// Load
lea addresses_PSE+0x8958, %rdx
xor $38204, %r8
mov (%rdx), %si
nop
dec %rdx

// Load
lea addresses_A+0x138d0, %r13
nop
nop
nop
nop
nop
cmp $43677, %rdi
mov (%r13), %r12d
nop
add $48099, %rdi

// Store
lea addresses_PSE+0xa758, %r13
nop
nop
nop
nop
nop
and %r12, %r12
movl $0x51525354, (%r13)
add $3965, %r12

// Store
lea addresses_US+0x1cf38, %r8
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, (%r8)
dec %r13

// Store
lea addresses_PSE+0x58, %rdx
dec %r13
movw $0x5152, (%rdx)
nop
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_PSE+0xa758, %r12
and %r13, %r13
mov (%r12), %r8w
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
