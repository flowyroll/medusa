.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xf249, %rsi
lea addresses_D_ht+0x12ac9, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $49956, %r15
mov $63, %rcx
rep movsb
nop
nop
and $53604, %r11
lea addresses_UC_ht+0x5789, %rax
nop
nop
nop
nop
nop
cmp $29188, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x1abc9, %rsi
lea addresses_WT_ht+0x9f87, %rdi
nop
and %rbx, %rbx
mov $50, %rcx
rep movsl
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x137f9, %rsi
lea addresses_D_ht+0x11b81, %rdi
nop
nop
xor $27964, %rbx
mov $105, %rcx
rep movsw
nop
and $51959, %rbx
lea addresses_UC_ht+0x1d7c9, %rcx
nop
nop
nop
nop
nop
add %r11, %r11
movw $0x6162, (%rcx)
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x8fc9, %rsi
lea addresses_D_ht+0xa079, %rdi
nop
cmp %rbx, %rbx
mov $54, %rcx
rep movsb
nop
nop
nop
cmp $1764, %r11
lea addresses_A_ht+0x17009, %rsi
lea addresses_UC_ht+0x4409, %rdi
clflush (%rsi)
nop
nop
nop
add %rax, %rax
mov $2, %rcx
rep movsq
nop
nop
inc %rbp
lea addresses_UC_ht+0x4226, %rbx
nop
nop
xor $13718, %r11
vmovups (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
nop
nop
add $52076, %rdi
lea addresses_A_ht+0xd949, %rax
dec %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
nop
xor $58658, %rdi
lea addresses_A_ht+0x4cc9, %rbp
nop
nop
nop
sub $491, %rdi
mov (%rbp), %ecx
nop
nop
nop
nop
xor $13255, %rcx
lea addresses_UC_ht+0x1d9f1, %rsi
lea addresses_A_ht+0x192fb, %rdi
nop
nop
nop
nop
nop
sub $32402, %rbx
mov $36, %rcx
rep movsw
cmp $15758, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rdi
push %rsi

// Faulty Load
lea addresses_WC+0xcfc9, %rsi
nop
nop
nop
nop
nop
xor $64230, %r10
vmovaps (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdi
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 6}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'44': 19204, '47': 128, '46': 2486, '00': 11}
44 44 46 44 46 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 46 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 46 46 44 46 46 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 46 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 46 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 46 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 46 44 46 46 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 47 44 44 44 44 44 46 44 44 44 44 46 46 44 44 44 44 44 44 46 44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 44 47 47 44 44 46 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 47 46 44 44 46 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 47 44 44 44 44 46 44 46 44 46 46 44 44 44 44 44 44 44 44 44 44 46 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44
*/
