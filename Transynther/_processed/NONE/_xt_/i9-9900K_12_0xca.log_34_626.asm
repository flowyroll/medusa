.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1060c, %rsi
lea addresses_normal_ht+0x1912c, %rdi
nop
nop
sub $1154, %r10
mov $79, %rcx
rep movsl
nop
nop
nop
nop
xor $54724, %rbx
lea addresses_D_ht+0x1dfac, %r9
clflush (%r9)
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
nop
nop
nop
nop
xor $59798, %rcx
lea addresses_normal_ht+0x1bc74, %r9
nop
nop
nop
nop
nop
inc %rbx
mov (%r9), %rcx
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x18c, %rcx
nop
nop
nop
sub $57755, %rsi
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %rdi
nop
xor $1123, %r10
lea addresses_D_ht+0xb64c, %r10
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
nop
nop
and $35298, %rsi
lea addresses_WC_ht+0x1140c, %rcx
clflush (%rcx)
nop
nop
nop
add $45802, %rdi
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
nop
nop
nop
nop
nop
add $4370, %rsi
lea addresses_WT_ht+0x1b076, %rsi
lea addresses_normal_ht+0x1a68c, %rdi
clflush (%rdi)
and %r11, %r11
mov $2, %rcx
rep movsq
nop
nop
xor %r11, %r11
lea addresses_D_ht+0xb80c, %rsi
lea addresses_normal_ht+0xd43, %rdi
nop
nop
and %r10, %r10
mov $84, %rcx
rep movsw
xor $47847, %r9
lea addresses_normal_ht+0x1380c, %rsi
lea addresses_A_ht+0x1540c, %rdi
nop
nop
nop
nop
add $47245, %rax
mov $0, %rcx
rep movsq
xor $63963, %rsi
lea addresses_A_ht+0xbc0c, %rsi
lea addresses_WT_ht+0x1880c, %rdi
cmp $31454, %r9
mov $92, %rcx
rep movsb
nop
nop
nop
nop
and $6587, %r10
lea addresses_WT_ht+0xc7c, %rbx
nop
nop
xor $18095, %rcx
movb (%rbx), %r9b
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x16ffb, %rbx
nop
and $21796, %rsi
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1620c, %rdi
dec %rbx
mov (%rdi), %cx
cmp %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x18a0c, %rax
nop
nop
and $37339, %rcx
movb $0x51, (%rax)
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_WT+0x150c, %r14
nop
nop
nop
nop
nop
sub $48332, %rdi
movb $0x51, (%r14)
nop
sub $47481, %rcx

// Store
lea addresses_WT+0xdb4c, %r11
clflush (%r11)
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovaps %ymm3, (%r11)
nop
nop
nop
nop
nop
add $10149, %r14

// Store
mov $0xc0c, %rcx
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
dec %rdi

// Store
lea addresses_D+0x12d30, %rax
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_US+0x1cd6a, %r11
nop
nop
nop
nop
nop
and %rcx, %rcx
movw $0x5152, (%r11)
nop
nop
inc %r11

// Faulty Load
lea addresses_PSE+0x1e40c, %rdx
nop
nop
nop
nop
cmp $45128, %r14
mov (%rdx), %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_US', 'same': False, 'AVXalign': True, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'33': 34}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
