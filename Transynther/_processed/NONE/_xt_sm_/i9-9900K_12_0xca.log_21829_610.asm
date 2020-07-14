.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x3587, %r14
nop
nop
cmp $2540, %rbp
vmovups (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
and %rax, %rax
lea addresses_WC_ht+0xf307, %r8
nop
nop
nop
nop
nop
and $4881, %r14
movb $0x61, (%r8)
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x2d87, %rsi
lea addresses_WC_ht+0x150a7, %rdi
nop
dec %r11
mov $56, %rcx
rep movsl
sub $33716, %rdx
lea addresses_D_ht+0x4887, %rdi
nop
nop
nop
xor %rcx, %rcx
movl $0x61626364, (%rdi)
inc %rdi
lea addresses_WC_ht+0xd387, %r8
nop
add $17216, %rdi
mov (%r8), %dx
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x9a8f, %rsi
lea addresses_D_ht+0x1b587, %rdi
nop
nop
nop
nop
inc %rax
mov $82, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x86cf, %rsi
lea addresses_WC_ht+0x1834f, %rdi
nop
nop
sub $23679, %r8
mov $92, %rcx
rep movsq
nop
nop
nop
nop
xor $2006, %rdx
lea addresses_normal_ht+0x12087, %r8
clflush (%r8)
nop
nop
nop
nop
nop
add $14218, %rbp
and $0xffffffffffffffc0, %r8
movntdqa (%r8), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
nop
nop
and $52001, %r11
lea addresses_UC_ht+0x7d87, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $55585, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rdi)
sub $64297, %rdx
lea addresses_D_ht+0x6587, %rsi
lea addresses_normal_ht+0x9407, %rdi
nop
nop
nop
and $15575, %rdx
mov $85, %rcx
rep movsb
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x1da85, %rcx
clflush (%rcx)
nop
nop
xor $6920, %r14
movb (%rcx), %r11b
nop
nop
nop
nop
and $37493, %rdi
lea addresses_WT_ht+0xace7, %rax
nop
nop
nop
nop
dec %rsi
vmovups (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0x377, %rax
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r11
movq %r11, (%rax)
and %r8, %r8
lea addresses_UC_ht+0x149a7, %rsi
lea addresses_A_ht+0x1487f, %rdi
nop
nop
nop
and $49671, %r11
mov $28, %rcx
rep movsq
nop
nop
xor $45677, %rsi
lea addresses_D_ht+0xe927, %rax
nop
nop
cmp %rdi, %rdi
movb (%rax), %r11b
nop
cmp $9674, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_A+0x9587, %rbx
nop
nop
cmp %r15, %r15
movl $0x51525354, (%rbx)
nop
xor $62699, %r15

// Store
lea addresses_WC+0x10ec7, %rdx
clflush (%rdx)
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rdx)
nop
and %rsi, %rsi

// Load
lea addresses_D+0xd333, %r8
cmp $50825, %rsi
movups (%r8), %xmm6
vpextrq $0, %xmm6, %r15
and %r8, %r8

// Store
lea addresses_D+0x66c7, %rbx
nop
nop
cmp %rbp, %rbp
movl $0x51525354, (%rbx)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_A+0x129da, %rsi
add $3209, %r8
movw $0x5152, (%rsi)
add $26168, %r15

// Load
lea addresses_A+0x8d87, %rdx
nop
nop
nop
xor %r8, %r8
mov (%rdx), %ebp
nop
nop
dec %r9

// Faulty Load
lea addresses_A+0x9587, %r8
nop
nop
nop
nop
nop
xor $57982, %r15
mov (%r8), %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
