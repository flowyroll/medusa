.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x63b, %r15
clflush (%r15)
nop
nop
nop
nop
cmp $38347, %rbp
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
sub $49851, %rax
lea addresses_normal_ht+0x7a50, %rsi
lea addresses_D_ht+0x3e50, %rdi
clflush (%rsi)
nop
and $11658, %r10
mov $61, %rcx
rep movsw
nop
add %rbp, %rbp
lea addresses_WT_ht+0x168e0, %r15
nop
sub %rcx, %rcx
movb $0x61, (%r15)
nop
nop
nop
xor $21922, %rax
lea addresses_WC_ht+0x1e8b4, %rsi
lea addresses_UC_ht+0x11dd0, %rdi
nop
nop
nop
nop
nop
cmp $16639, %rax
mov $23, %rcx
rep movsw
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x18c98, %rsi
nop
nop
nop
nop
nop
dec %rbp
mov (%rsi), %r10w
xor %rax, %rax
lea addresses_normal_ht+0x8250, %rax
nop
nop
nop
nop
nop
add %rcx, %rcx
movb (%rax), %r10b
nop
nop
nop
cmp $43288, %rbp
lea addresses_UC_ht+0x1c198, %rsi
lea addresses_normal_ht+0x4220, %rdi
nop
nop
xor %rbp, %rbp
mov $102, %rcx
rep movsw
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x17250, %rsi
lea addresses_D_ht+0x17250, %rdi
nop
nop
dec %rax
mov $21, %rcx
rep movsb
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x11650, %r15
nop
nop
nop
nop
nop
cmp $56926, %rax
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x2b1c, %rsi
nop
nop
nop
xor %r10, %r10
mov (%rsi), %rdi
sub $22684, %rbp
lea addresses_UC_ht+0x1c650, %rbp
cmp %rax, %rax
movb $0x61, (%rbp)
xor %rdi, %rdi
lea addresses_WC_ht+0x2670, %rsi
lea addresses_A_ht+0x3c50, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $28092, %r10
mov $10, %rcx
rep movsq
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x18d90, %rsi
lea addresses_UC_ht+0xdc90, %rdi
nop
nop
inc %r11
mov $53, %rcx
rep movsw
nop
nop
nop
nop
xor $28654, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi

// Store
mov $0xfb8, %rcx
and $44201, %rdi
movw $0x5152, (%rcx)
nop
nop
dec %r13

// Store
lea addresses_WT+0x1d1ac, %r13
nop
nop
nop
xor %rbx, %rbx
movb $0x51, (%r13)
cmp %rbx, %rbx

// Store
lea addresses_WT+0x19750, %r8
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%r8)
nop
nop
nop
add $5055, %rbp

// Store
lea addresses_A+0x171f0, %rdi
nop
nop
nop
nop
sub $9591, %rbx
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
nop
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_D+0x17250, %r13
nop
add %rbp, %rbp
vmovntdqa (%r13), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'44': 4202, '49': 94, '00': 17533}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 49 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 44 44 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 49 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 44 44 44 00 00 44 44 00 00 00 00 00 00 00 44 00 44 44 00 00 44 00 00 00 00 00 00 00 00 00 44 00 44 00 00 44 00 00 44 00 00 00 44 44 44 00 00 44 44 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 44 44 44 00 44 00 00 44 00 44 00 44 49 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 44 00 00 44 00 00 44 00 44 44 00 00 44 00 00 44 00 44 44 00 00 44 44 44 44 00 00 44 00 00 00 00 00 00 00 44 00 44 44 44 00 00 44 00 00 44 44 44 00 00 44 44 00 44 00 00 00 44 44 00 44 00 44 44 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 44 44 44 00 44 44 00 44 00 00 44 00 44 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 44 00 44 00 00 44 44 44 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 44 00 44 44 44 44 00 44 44 44 00 00 44 00 00 44 00 44 00 44 44 00 00 00 00 00 00 00 00 00 44 00 44 44 00 00 44 00 00 44 00 00 44 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 00 00 44 00 00 00 00 00 44 00 44 44 44 00 00 44 44 44 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 44 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 00 44 00 00 44 00 44 00 44 00 00 44 00 44 00 44 00 44 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 44 44 00 44 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 00 44 00 00 00 00 00 00 44 44 00 00 00 00 00 44 44 44 44 00 44 00 44 00 00 00 00 00 44 00 44 00 44 44 00 44 44 00 00 44 00 00 44 00 00 44 00 44 00 00 44 00 44 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 44 00 44 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 44 00 00 44 00 44 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
