.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x2ddb, %rsi
lea addresses_normal_ht+0xfbbb, %rdi
nop
xor $65018, %rdx
mov $93, %rcx
rep movsl
sub %rbp, %rbp
lea addresses_D_ht+0x1a103, %rsi
lea addresses_normal_ht+0x146ab, %rdi
xor %r14, %r14
mov $110, %rcx
rep movsb
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x16ff, %rdi
nop
nop
nop
nop
nop
dec %r8
mov (%rdi), %ecx
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0xaceb, %rcx
nop
nop
nop
and %r8, %r8
mov (%rcx), %dx
nop
inc %r14
lea addresses_WT_ht+0x136bb, %rbp
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x12ebb, %rsi
nop
nop
and $16747, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
nop
and $29104, %rsi
lea addresses_WT_ht+0x131c2, %rsi
lea addresses_UC_ht+0x593b, %rdi
nop
inc %r13
mov $118, %rcx
rep movsl
xor %r8, %r8
lea addresses_A_ht+0x10e2f, %rcx
nop
cmp $38960, %r14
movl $0x61626364, (%rcx)
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x5bbb, %r13
and $57711, %rsi
movb (%r13), %dl
nop
inc %rcx
lea addresses_A_ht+0x131bb, %rsi
lea addresses_A_ht+0x73f3, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $24602, %r8
mov $53, %rcx
rep movsl
nop
dec %rdi
lea addresses_WC_ht+0x1873b, %r8
nop
nop
nop
nop
nop
inc %rdx
mov (%r8), %ebp
nop
nop
nop
nop
nop
cmp $63366, %rcx
lea addresses_A_ht+0x663b, %rsi
lea addresses_A_ht+0x3af3, %rdi
nop
nop
nop
and $57002, %r13
mov $12, %rcx
rep movsw
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1e98a, %r14
nop
nop
nop
add $46822, %rbp
vmovups (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
cmp $41409, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_US+0xef3b, %rbx
nop
nop
xor $47681, %r8
movl $0x51525354, (%rbx)
dec %rax

// Store
lea addresses_US+0xef3b, %r10
nop
nop
nop
nop
nop
sub $63176, %r14
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
nop
nop
nop
nop
sub $15913, %r8

// Store
lea addresses_WT+0x1e33b, %r10
nop
nop
nop
nop
nop
add $22359, %rbx
movw $0x5152, (%r10)
nop
nop
nop
nop
cmp $40495, %rbx

// Store
lea addresses_WT+0x3daf, %r10
nop
nop
and $26940, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
sub $34066, %rdx

// Store
lea addresses_UC+0x16d9f, %r10
nop
and %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, (%r10)
nop
nop
nop
cmp $65245, %r8

// Load
lea addresses_WC+0x1e53b, %rax
nop
nop
dec %rdi
movups (%rax), %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
xor %r10, %r10

// Store
lea addresses_US+0x1575b, %rax
nop
and %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovaps %ymm4, (%rax)
nop
nop
nop
nop
add %rbx, %rbx

// Load
lea addresses_PSE+0x171ab, %rbx
clflush (%rbx)
sub %rdi, %rdi
mov (%rbx), %r8w
nop
nop
nop
nop
cmp %rax, %rax

// Faulty Load
lea addresses_US+0xef3b, %r8
add %r14, %r14
movups (%r8), %xmm2
vpextrq $0, %xmm2, %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 5, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 2, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'58': 19}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
