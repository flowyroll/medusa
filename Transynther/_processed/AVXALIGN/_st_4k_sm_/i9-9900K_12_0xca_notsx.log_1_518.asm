.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x467e, %r12
nop
nop
add $39285, %r15
mov (%r12), %r13w
cmp %rsi, %rsi
lea addresses_WC_ht+0xa16f, %rsi
lea addresses_D_ht+0x76be, %rdi
clflush (%rsi)
nop
nop
nop
dec %r13
mov $82, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_WT_ht+0x1743e, %rsi
lea addresses_WC_ht+0x1497e, %rdi
xor %rax, %rax
mov $117, %rcx
rep movsb
xor $17069, %rdi
lea addresses_WT_ht+0x1807e, %rsi
lea addresses_normal_ht+0x18ebe, %rdi
nop
nop
nop
and %r13, %r13
mov $104, %rcx
rep movsl
nop
cmp $16181, %rax
lea addresses_UC_ht+0xc160, %rsi
lea addresses_WT_ht+0x4f3e, %rdi
clflush (%rdi)
nop
nop
nop
and $25113, %rdx
mov $36, %rcx
rep movsq
cmp %r12, %r12
lea addresses_A_ht+0x15f6e, %rcx
nop
nop
nop
sub %rdx, %rdx
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x1a514, %rsi
lea addresses_A_ht+0x749e, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %rdx, %rdx
mov $105, %rcx
rep movsq
nop
nop
nop
add $54680, %r12
lea addresses_UC_ht+0x92be, %rax
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rax), %rcx
nop
nop
nop
nop
cmp $29242, %r13
lea addresses_UC_ht+0x1feb, %r13
nop
cmp $58082, %rsi
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x495e, %r15
nop
nop
nop
nop
nop
xor %r13, %r13
mov (%r15), %di
nop
sub %rax, %rax
lea addresses_WT_ht+0x396, %rsi
lea addresses_WC_ht+0x11efe, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $102, %rcx
rep movsb
nop
nop
nop
nop
cmp $29147, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rdx

// Store
lea addresses_A+0x116be, %r11
nop
nop
nop
nop
nop
add $3720, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_PSE+0xebe, %r15
nop
nop
nop
sub %rax, %rax
movw $0x5152, (%r15)
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_US+0x10b3e, %r15
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movntdq %xmm6, (%r15)
nop
nop
nop
and %r11, %r11

// Store
lea addresses_RW+0xa0e8, %rax
sub $17404, %r14
movb $0x51, (%rax)
nop
nop
nop
nop
nop
inc %r14

// Load
lea addresses_RW+0x18ebe, %r13
nop
nop
cmp %rax, %rax
movb (%r13), %r15b
nop
nop
nop
add $45667, %rax

// Store
lea addresses_D+0xbaf8, %r11
nop
add %rax, %rax
movb $0x51, (%r11)
nop
nop
nop
and $40928, %rax

// Store
lea addresses_WC+0x9ebe, %r14
cmp $25705, %r11
movb $0x51, (%r14)
nop
cmp %r15, %r15

// Store
lea addresses_A+0x17bbe, %rax
nop
inc %rbx
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
xor $52339, %r14

// Faulty Load
lea addresses_A+0x116be, %r14
clflush (%r14)
nop
nop
cmp $4828, %r13
vmovaps (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'58': 1}
58
*/
