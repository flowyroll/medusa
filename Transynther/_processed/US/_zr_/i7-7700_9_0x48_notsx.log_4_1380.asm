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
lea addresses_WT_ht+0x1e267, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor $55465, %r12
movl $0x61626364, (%rcx)
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x8763, %rcx
nop
nop
and $55230, %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rcx)
nop
nop
dec %r12
lea addresses_D_ht+0x5567, %r11
nop
nop
nop
nop
nop
cmp $13508, %r13
movb (%r11), %cl
nop
nop
add $58488, %r11
lea addresses_WC_ht+0xb0a7, %r12
nop
xor %r13, %r13
mov (%r12), %rdx
nop
add %r11, %r11
lea addresses_D_ht+0x12867, %rsi
nop
nop
nop
add %r13, %r13
mov (%rsi), %cx
nop
xor $1472, %r12
lea addresses_D_ht+0x10d67, %rsi
lea addresses_UC_ht+0x3d77, %rdi
nop
nop
nop
nop
add $60159, %r15
mov $65, %rcx
rep movsb
and $6174, %r12
lea addresses_UC_ht+0x1a98f, %rsi
lea addresses_normal_ht+0x1b467, %rdi
nop
nop
inc %rdx
mov $17, %rcx
rep movsl
sub $9916, %r11
lea addresses_WC_ht+0xf727, %rdx
nop
and $38464, %rcx
mov (%rdx), %rsi
nop
sub %r15, %r15
lea addresses_UC_ht+0x2767, %r11
nop
nop
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
nop
nop
inc %r11
lea addresses_WC_ht+0xdbf7, %rdx
nop
nop
nop
inc %r11
movl $0x61626364, (%rdx)
nop
nop
nop
xor %r15, %r15
lea addresses_D_ht+0xb27, %rdx
and %r11, %r11
movw $0x6162, (%rdx)
and $53208, %rdi
lea addresses_A_ht+0x1b367, %rdx
clflush (%rdx)
nop
nop
nop
nop
dec %r11
mov $0x6162636465666768, %r13
movq %r13, (%rdx)
nop
cmp $49132, %r12
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
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_A+0x3dc7, %r13
nop
nop
nop
sub %rdi, %rdi
movw $0x5152, (%r13)
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_D+0x184c7, %rbp
nop
nop
xor $26307, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_WT+0x9b07, %rbx
nop
nop
nop
add %rdi, %rdi
movl $0x51525354, (%rbx)
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_WT+0x9f27, %r11
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%r11)
dec %r11

// Faulty Load
lea addresses_US+0x1ef67, %r11
nop
nop
nop
add %rdi, %rdi
movb (%r11), %r8b
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 8}}
{'dst': {'same': True, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 9}, 'OP': 'STOR'}
{'00': 4}
00 00 00 00
*/
