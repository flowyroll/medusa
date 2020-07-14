.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1443f, %r14
nop
xor %rax, %rax
movups (%r14), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
dec %r12
lea addresses_normal_ht+0x175f, %rbx
nop
nop
nop
dec %rdx
mov (%rbx), %cx
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x9dbf, %r14
nop
and %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
movups %xmm4, (%r14)
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x10a6f, %rcx
nop
nop
nop
inc %r14
movb $0x61, (%rcx)
nop
nop
sub $20209, %rax
lea addresses_D_ht+0xfa3f, %rcx
clflush (%rcx)
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
nop
nop
nop
nop
nop
add $63418, %rbx
lea addresses_A_ht+0xb4a4, %rcx
nop
nop
nop
nop
nop
cmp $28879, %rbx
mov (%rcx), %ax
nop
xor $57009, %rax
lea addresses_WT_ht+0x1263f, %rsi
lea addresses_D_ht+0x989e, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $83, %rcx
rep movsq
nop
nop
dec %rdx
lea addresses_A_ht+0x6d47, %r14
nop
nop
inc %rax
movb $0x61, (%r14)
nop
nop
sub $63384, %rdi
lea addresses_A_ht+0x19ee6, %rsi
lea addresses_UC_ht+0x6cef, %rdi
nop
nop
nop
nop
and $4742, %rbx
mov $98, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x1a43f, %rdx
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rdx), %r12
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1543f, %r14
nop
nop
sub $61893, %rdi
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
dec %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_RW+0x837f, %rbp
sub $46109, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
nop
add $26118, %r15

// Store
lea addresses_WT+0xb907, %rbx
clflush (%rbx)
nop
nop
nop
cmp $15066, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_A+0x9ea7, %rbx
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movaps %xmm4, (%rbx)
cmp %rax, %rax

// Store
lea addresses_PSE+0x136ff, %rbx
add $61274, %r10
movw $0x5152, (%rbx)

// Exception!!!
nop
mov (0), %rbx
nop
nop
nop
nop
and $939, %rbx

// Faulty Load
mov $0x3f, %rcx
sub %rbp, %rbp
movaps (%rcx), %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'45': 18904, '46': 2925}
45 45 46 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 46 46 45 45 45 46 45 45 45 46 46 46 45 45 46 45 45 45 45 46 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 46 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 46 45 46 45 45 46 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 46 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 45 46 46 46 45 45 45 45 45 46 45 45 45 46 45 45 46 45 46 45 45 45 45 46 45 45 45 45 45 46 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 46 46 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 45 45 45 46 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 46 45 45 45 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 46 45 45 45 46 45 45 45 45 45 45 45 45 46 45 46 46 45 46 45 45 45 45 45 45 45 45 46 46 45 45 45 46 45 46 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 45 46 45 45 45 46 45 45 45 46 46 45 45 45 45 46 45 45 45 45 46 45 45 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 45 45 45 45 46 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 46 46 45 45 45 45 45 45 45 45 46 45 45 45 46 46 45 46 45 45 45 45 46 45 46 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 46 46 45 46 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45
*/
