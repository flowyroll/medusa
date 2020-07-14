.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x166e0, %r9
nop
nop
nop
nop
add %rsi, %rsi
mov (%r9), %ecx
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x1c5e0, %rsi
lea addresses_normal_ht+0x177e0, %rdi
nop
nop
nop
sub %r9, %r9
mov $78, %rcx
rep movsl
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0x12ff0, %rsi
lea addresses_A_ht+0x13bd1, %rdi
add %r11, %r11
mov $61, %rcx
rep movsb
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x12e0, %r9
clflush (%r9)
nop
nop
nop
nop
nop
and $30887, %rbx
mov (%r9), %r11d
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x12a92, %r9
clflush (%r9)
nop
nop
nop
sub %rbx, %rbx
mov (%r9), %r11d
nop
nop
inc %rdi
lea addresses_WC_ht+0x188e0, %rsi
lea addresses_UC_ht+0x177e0, %rdi
nop
lfence
mov $36, %rcx
rep movsq
nop
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x9ad0, %r9
nop
nop
nop
nop
nop
sub $54030, %r13
mov (%r9), %rdi
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x6be0, %rsi
lea addresses_WC_ht+0x187e0, %rdi
nop
add %rdx, %rdx
mov $15, %rcx
rep movsl
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0x17de0, %r13
clflush (%r13)
nop
xor %rbx, %rbx
mov (%r13), %cx
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x7420, %rbx
nop
nop
add $52227, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
sub $38330, %r9
lea addresses_UC_ht+0x11bd4, %rsi
lea addresses_D_ht+0x1141c, %rdi
clflush (%rsi)
add %r11, %r11
mov $115, %rcx
rep movsb
nop
xor %r9, %r9
lea addresses_A_ht+0x2260, %rsi
lea addresses_D_ht+0x2c88, %rdi
nop
nop
xor %rbx, %rbx
mov $82, %rcx
rep movsq
nop
nop
nop
sub %r11, %r11
lea addresses_D_ht+0xfec2, %rdi
clflush (%rdi)
nop
nop
xor %rdx, %rdx
movw $0x6162, (%rdi)
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x1d9e0, %rsi
lea addresses_RW+0x1d9e0, %rdi
nop
nop
nop
nop
nop
add $38482, %r8
mov $17, %rcx
rep movsb
nop
nop
and $47304, %r11

// Faulty Load
lea addresses_RW+0x1d9e0, %rdi
nop
nop
nop
xor $26291, %r11
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_RW'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_RW'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'dst': {'same': True, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'ff': 1}
ff
*/
