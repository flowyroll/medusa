.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x80a, %rbp
nop
nop
nop
nop
add $3299, %r14
mov (%rbp), %r11w
nop
nop
sub $60395, %rax
lea addresses_WT_ht+0x19877, %rsi
lea addresses_UC_ht+0x1bc22, %rdi
nop
nop
nop
sub %r10, %r10
mov $119, %rcx
rep movsq
nop
nop
nop
sub $39419, %rbp
lea addresses_UC_ht+0x2a12, %rsi
lea addresses_A_ht+0x594a, %rdi
nop
nop
cmp $55608, %r11
mov $38, %rcx
rep movsb
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1b08a, %r10
nop
nop
nop
nop
and $811, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
nop
nop
cmp $35856, %r14
lea addresses_WC_ht+0xa00a, %r10
nop
nop
nop
and $1002, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x1a93a, %r11
cmp %rbp, %rbp
mov (%r11), %cx
nop
nop
mfence
lea addresses_A_ht+0x1c4ce, %rsi
nop
nop
nop
inc %rdi
movb (%rsi), %cl
nop
and %rcx, %rcx
lea addresses_normal_ht+0xc60a, %rcx
nop
nop
nop
nop
nop
sub $57361, %rax
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x1eb0a, %rsi
lea addresses_WC_ht+0x1370a, %rdi
clflush (%rdi)
nop
nop
xor $22098, %r11
mov $122, %rcx
rep movsq
nop
nop
nop
nop
nop
and $65356, %rdi
lea addresses_WC_ht+0x141aa, %r10
add $32754, %rsi
movb (%r10), %al
nop
sub $54146, %rcx
lea addresses_D_ht+0x11df2, %rsi
lea addresses_D_ht+0x4f0a, %rdi
nop
nop
inc %rbp
mov $86, %rcx
rep movsq
nop
nop
nop
dec %r11
lea addresses_WC_ht+0x1570a, %rdi
nop
nop
nop
nop
and %r14, %r14
movl $0x61626364, (%rdi)
cmp %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x816a, %rcx
nop
nop
nop
nop
nop
cmp $59495, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
and $28976, %rax

// Store
lea addresses_D+0x1068a, %r11
nop
sub $33488, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_US+0x1890a, %r8
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rbx
movq %rbx, (%r8)
nop
and %r11, %r11

// Store
lea addresses_D+0x18b0a, %rbx
nop
nop
cmp $30601, %rcx
movb $0x51, (%rbx)
cmp $41736, %r10

// REPMOV
lea addresses_WC+0x1030a, %rsi
lea addresses_D+0x1af0a, %rdi
nop
nop
inc %rbx
mov $5, %rcx
rep movsq
nop
nop
nop
nop
xor $65271, %r10

// Faulty Load
lea addresses_D+0x18b0a, %r10
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r10), %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_D', 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'52': 1}
52
*/
