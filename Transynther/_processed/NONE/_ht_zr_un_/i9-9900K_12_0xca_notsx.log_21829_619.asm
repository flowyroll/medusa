.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x186b8, %rsi
lea addresses_A_ht+0x9278, %rdi
nop
dec %rax
mov $1, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r8
lea addresses_A_ht+0x1be78, %rsi
lea addresses_WT_ht+0x12078, %rdi
nop
nop
nop
add %rdx, %rdx
mov $71, %rcx
rep movsb
inc %rsi
lea addresses_normal_ht+0x1a878, %rdi
xor %rbx, %rbx
movb (%rdi), %cl
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x2078, %rcx
nop
nop
nop
add $57298, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x10f18, %rdx
nop
cmp $61481, %rbx
movl $0x61626364, (%rdx)
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x9cee, %rsi
lea addresses_WC_ht+0x8f78, %rdi
nop
nop
nop
cmp %r8, %r8
mov $124, %rcx
rep movsl
nop
nop
and $5616, %rdi
lea addresses_D_ht+0xb458, %rax
sub $49364, %rdx
mov (%rax), %cx
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x10f38, %rsi
lea addresses_WC_ht+0xa078, %rdi
nop
inc %r11
mov $118, %rcx
rep movsq
nop
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x16078, %rbx
add %rdx, %rdx
movups (%rbx), %xmm0
vpextrq $0, %xmm0, %r8
inc %rdi
lea addresses_D_ht+0x9dbd, %rsi
lea addresses_WC_ht+0x1e878, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $49181, %rdx
mov $20, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rdi
push %rdx

// Store
lea addresses_UC+0x184b8, %rdi
nop
nop
nop
nop
cmp $30368, %r11
movw $0x5152, (%rdi)
nop
lfence

// Store
mov $0x4d8, %r8
nop
nop
add $59584, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_UC+0x3478, %rax
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rax)
and %rax, %rax

// Load
lea addresses_US+0xbdb8, %r8
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r8), %r14w
and $31379, %rdi

// Store
lea addresses_UC+0x3574, %r11
clflush (%r11)
nop
nop
nop
and $12181, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r11)
sub %r8, %r8

// Store
lea addresses_PSE+0x1ca20, %r12
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_A+0x78, %r11
nop
nop
nop
nop
nop
add $47285, %rax
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'46': 10641, '00': 2361, 'ff': 1, '45': 8805, '47': 21}
46 46 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 45 45 00 45 46 45 00 45 45 00 45 46 45 46 45 46 45 00 45 45 45 00 45 45 45 00 45 46 45 00 45 45 46 45 00 46 46 46 45 45 45 45 45 46 46 00 45 46 45 00 45 46 45 00 46 46 45 46 46 45 46 46 46 45 00 46 45 45 00 45 45 00 46 46 46 45 45 45 45 46 46 46 45 46 45 45 46 45 00 45 00 46 46 46 45 45 00 45 46 45 46 46 46 46 45 45 46 46 46 45 45 45 45 46 46 46 45 46 46 46 45 46 46 46 45 00 46 45 45 45 46 46 46 45 46 00 46 46 46 46 45 46 45 45 00 45 00 45 46 45 00 45 46 46 46 45 45 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 46 45 46 46 45 00 45 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 00 45 45 45 46 46 46 45 00 46 45 45 45 45 45 45 45 45 46 46 46 45 00 46 45 45 46 45 46 45 45 00 45 46 46 46 45 46 45 00 45 46 45 46 45 46 46 46 45 46 46 45 45 46 46 46 45 46 46 46 45 46 45 45 46 45 00 45 45 45 00 46 00 45 00 46 00 45 46 46 46 45 46 45 46 45 46 45 46 00 46 46 46 45 00 45 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 45 45 46 46 45 46 45 45 46 46 46 45 00 46 46 45 45 45 45 46 46 00 45 46 45 00 45 46 45 00 45 45 45 45 45 46 46 46 45 46 46 45 45 46 46 46 45 00 45 45 45 46 46 46 45 46 45 45 45 00 46 46 45 45 00 46 46 46 45 45 00 46 45 45 46 45 46 46 46 46 46 45 46 45 45 45 46 46 45 45 46 45 00 45 46 45 46 45 46 46 46 45 45 45 46 46 46 46 45 00 46 45 45 45 45 45 46 46 45 45 00 46 46 45 46 46 46 45 00 45 45 45 46 45 45 46 45 46 46 46 45 45 45 45 00 45 00 45 00 45 46 46 46 45 46 45 00 46 45 45 00 45 46 45 00 45 46 45 00 46 00 45 45 45 45 00 45 45 45 00 45 46 45 00 46 46 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 00 46 46 45 46 46 45 45 46 46 46 45 46 46 45 00 46 46 46 45 46 45 45 45 45 00 46 46 46 46 45 46 46 45 00 45 46 45 45 46 00 46 46 45 45 45 45 45 46 45 45 46 46 46 46 45 45 46 46 45 45 46 46 45 45 46 46 45 45 46 46 46 45 00 00 45 45 00 46 45 45 46 45 45 45 46 46 45 45 00 46 45 45 46 46 45 45 46 46 46 45 46 46 46 45 46 45 00 45 46 46 00 46 46 45 00 45 45 46 45 00 45 45 45 00 45 46 45 00 45 45 45 00 45 45 45 46 45 45 45 00 46 45 45 00 46 45 45 46 45 46 00 45 46 45 00 45 45 45 00 45 46 45 46 45 46 45 46 45 00 46 45 45 45 45 45 46 45 46 46 45 00 45 46 45 00 45 45 45 00 45 46 46 46 46 46 46 46 46 46 46 45 46 46 46 45 46 46 46 45 00 46 45 45 46 46 46 45 46 45 45 46 46 46 45 46 46 00 45 45 00 46 46 46 45 46 45 46 46 46 46 45 00 46 45 45 46 46 46 45 46 45 46 00 46 46 46 45 00 46 45 45 45 46 46 46 46 46 45 45 45 45 46 46 46 45 00 46 45 45 45 45 45 45 45 45 46 46 46 45 46 46 46 45 45 45 45 00 46 45 45 46 46 46 45 45 45 45 46 46 46 45 00 45 46 45 00 46 45 45 45 46 46 45 45 45 00 46 46 00 45 45 46 45 46 46 46 45 45 45 45 46 45 45 46 45 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 45 46 45 45 45 45 45 45 45 46 46 46 46 45 45 45 46 46 46 45 45 46 46 46 45 46 46 46 46 45 45
*/
