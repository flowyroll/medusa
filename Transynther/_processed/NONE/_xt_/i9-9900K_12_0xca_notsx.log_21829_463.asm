.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x542d, %rsi
lea addresses_normal_ht+0x1569f, %rdi
nop
nop
xor %r11, %r11
mov $39, %rcx
rep movsb
and %r15, %r15
lea addresses_A_ht+0x121a5, %rbx
nop
and $4016, %r13
movb $0x61, (%rbx)
nop
and $8399, %rcx
lea addresses_UC_ht+0x12e6d, %rcx
nop
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm7
and $0xffffffffffffffc0, %rcx
movntdq %xmm7, (%rcx)
nop
nop
nop
nop
nop
add $19819, %r11
lea addresses_A_ht+0xcabf, %rbx
nop
nop
nop
nop
and $130, %r15
mov $0x6162636465666768, %r13
movq %r13, (%rbx)
nop
nop
and %r13, %r13
lea addresses_D_ht+0x3c65, %rcx
nop
nop
nop
nop
nop
cmp $4017, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rcx)
xor $43505, %r15
lea addresses_A_ht+0x11a6d, %rsi
lea addresses_WT_ht+0x1382d, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $80, %rcx
rep movsq
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x28a5, %r15
nop
and %rcx, %rcx
movw $0x6162, (%r15)
nop
and %rsi, %rsi
lea addresses_WC_ht+0x66d, %r13
nop
inc %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r13)
nop
add %rsi, %rsi
lea addresses_A_ht+0xab6d, %r11
nop
nop
nop
sub %rbx, %rbx
mov (%r11), %r15w
cmp %r11, %r11
lea addresses_WT_ht+0x1ed6d, %rsi
lea addresses_normal_ht+0x179d, %rdi
clflush (%rsi)
nop
nop
nop
cmp %rbx, %rbx
mov $114, %rcx
rep movsw
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x566d, %r13
clflush (%r13)
nop
and $64766, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm2
and $0xffffffffffffffc0, %r13
vmovaps %ymm2, (%r13)
nop
nop
and $40305, %r13
lea addresses_UC_ht+0x106ed, %r15
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%r15)
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x1d04d, %rsi
lea addresses_A_ht+0xdded, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $124, %rcx
rep movsq
nop
nop
add $24319, %rdi
lea addresses_WT_ht+0x1332d, %r11
xor $44408, %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%r11)
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rcx

// Faulty Load
lea addresses_D+0x1fa6d, %rbp
nop
nop
nop
add %rcx, %rcx
movb (%rbp), %al
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
