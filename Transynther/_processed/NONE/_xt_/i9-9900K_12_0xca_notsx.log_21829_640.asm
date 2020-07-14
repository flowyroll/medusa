.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x15556, %rsi
lea addresses_normal_ht+0x1cdd6, %rdi
nop
nop
nop
nop
xor $31690, %r13
mov $43, %rcx
rep movsl
cmp %rcx, %rcx
lea addresses_WT_ht+0x10f8, %r12
nop
nop
and $44026, %r11
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
add %rdi, %rdi
lea addresses_WC_ht+0x18956, %r12
clflush (%r12)
nop
nop
nop
nop
and $14431, %r15
movups (%r12), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
inc %r13
lea addresses_A_ht+0x1d3ae, %r12
clflush (%r12)
nop
nop
sub $12170, %rsi
vmovups (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
cmp $5213, %rsi
lea addresses_WC_ht+0x1d416, %r12
clflush (%r12)
nop
nop
nop
dec %rcx
mov (%r12), %di
and $47429, %rsi
lea addresses_A_ht+0x3556, %r11
nop
nop
nop
nop
nop
inc %rdi
mov (%r11), %esi
add $27463, %r12
lea addresses_normal_ht+0x1e356, %rsi
lea addresses_D_ht+0x1d330, %rdi
nop
nop
inc %rdx
mov $98, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x7782, %rsi
nop
nop
nop
sub %r12, %r12
mov (%rsi), %edx
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x6656, %rsi
lea addresses_D_ht+0x2f56, %rdi
nop
nop
nop
nop
cmp $183, %r15
mov $47, %rcx
rep movsb
xor %rsi, %rsi
lea addresses_UC_ht+0x10656, %rdx
nop
nop
nop
nop
nop
add %rcx, %rcx
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
and $59214, %r12
lea addresses_WT_ht+0x15d56, %r11
clflush (%r11)
nop
nop
nop
nop
add $51025, %rcx
mov $0x6162636465666768, %r12
movq %r12, (%r11)
nop
nop
nop
nop
nop
and $31420, %rdi
lea addresses_normal_ht+0x1b0be, %rsi
lea addresses_A_ht+0x1a756, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
add %r15, %r15
mov $100, %rcx
rep movsl
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x6306, %r13
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm6
and $0xffffffffffffffc0, %r13
movntdq %xmm6, (%r13)
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x6f6e, %rdi
nop
nop
nop
sub $26989, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%rdi)
nop
nop
add %r13, %r13

// REPMOV
lea addresses_normal+0x14356, %rsi
lea addresses_PSE+0x179fe, %rdi
nop
sub $20121, %rbx
mov $47, %rcx
rep movsb
nop
nop
xor $6650, %rsi

// Store
mov $0x926, %rax
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, (%rax)
nop
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_WT+0x1d356, %rsi
nop
nop
nop
xor $48110, %rcx
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
